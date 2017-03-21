---
title: Documentation updated
type: document
author: philipp
---
We have updated our specification and other documentation significantly!

Over the last couple months we have spent a lot of time integrating Open SoC Debug into [OpTiMSoC](http://www.optimsoc.org) and ironing out some issues we found in this process.

Before we go on integrating more components which are already around for OpTiMSoC I took the chance to update our documentation, including the specification, a bit.
The update came in two parts.

First, a technical change: we now use reStructuredText as markup language, replacing Markdown.
With this change we can significantly simplify our documentation processing pipeline: from a own docker container with a customized pandoc installation (which requires a lot of Haskell dependencies to be present), we can now directly use ReadTheDocs for online documents, and a local Sphinx installation for development.

Second, on the content side, I've started the work to remove duplication from our overview document and putting parts of it into the spec where it actually belongs.
I've also integrated all the core module specification, which was kept in the hardware repository before, into the spec in documentation repository.
This work gives us a much more complete specification document, but also leaves some gaps.
I've denoted many of them with a TODO marker and will open individual issues as I start working on them and seeking consensus.

For now, enjoy the documentation at [ReadTheDocs](http://opensocdebug.readthedocs.io/en/latest/)!
