#!/bin/bash
#
# Build the OSD documentation library
#

OSD_DOCS_REPO_URL=${1:-https://github.com/opensocdebug/documentation.git}
OSD_DOCS_BRANCH=${2:-master}

# switch to script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

# temporary build directory
BUILDTMP=$(mktemp -d)

# get sources
if [ ! -d "$OSD_DOCS_LOCAL" ]; then
    git clone $OSD_DOCS_REPO_URL "$BUILDTMP/osd-documentation"
    ( cd "$BUILDTMP/osd-documentation"; git checkout $OSD_DOCS_BRANCH )
    OSD_DOCS_REPO_REVISION=$(cd $BUILDTMP/osd-documentation; git rev-parse --short HEAD)
else
    OSD_DOCS_REPO_REVISION=$(cd $OSD_DOCS_LOCAL; git rev-parse --short HEAD)
    cp -r $OSD_DOCS_LOCAL $BUILDTMP/osd-documentation
fi

# get document converter script
curl -s -o $BUILDTMP/osd-doc-converter https://raw.githubusercontent.com/opensocdebug/opensocdebug-doc-converter/master/osd-doc-converter
chmod +x $BUILDTMP/osd-doc-converter

# templates
mkdir -p $BUILDTMP/templates
cp $DIR/docbuild/doclibrary.html5 $BUILDTMP/templates/doclibrary.html5

DOCS_OUTDIR=$DIR/docs

# Overview
cat << EOF > $BUILDTMP/docprops.yaml
---
gitrevision: '$OSD_DOCS_REPO_REVISION'
date: '$(date -u)'
---
EOF

mkdir -p $BUILDTMP/out/overview
(
cd $BUILDTMP
./osd-doc-converter -f html5 \
    --template templates/doclibrary.html5 \
    --output out/overview/index.html \
    osd-documentation/overview/overview.md \
    docprops.yaml \
    osd-documentation/overview/pandoc-metadata.yaml

./osd-doc-converter -f pdf \
    --output out/overview/overview.pdf \
    osd-documentation/overview/overview.md \
    docprops.yaml \
    osd-documentation/overview/pandoc-metadata.yaml
)

cp -r $BUILDTMP/out/overview $DOCS_OUTDIR

rm -rf "$BUILDTMP"
