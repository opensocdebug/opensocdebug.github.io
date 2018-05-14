# Open SoC Debug Web Site

This is the code for http://opensocdebug.org.

## Local development

### Get the code
Clone this repository from GitHub.

~~~
git clone https://github.com/opensocdebug/opensocdebug.github.io.git
~~~

## Development Setup
To see the final page locally, you need to install Jekyll as described in the
[GitHub documentation](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/).

~~~
# Install dependencies
# for OpenSUSE
sudo zypper install ruby2.5-devel zlib-devel ruby2.5-rubygem-bundler

# for Ubuntu > 14.04 (Ruby > 2.0 is required)
sudo apt-get install ruby-dev zlib1g-dev

# Install Jekyll with all dependencies used by GitHub pages
# (inside the directory where this README is)
bundle install --path vendor/bundle

# Build and continuously update site
bundle exec jekyll serve
~~~

You can now view the site in your browser at http://localhost:4000.
It is constantly updated if you make changes to any of the source files
(if you reload the page in your browser, of course).

