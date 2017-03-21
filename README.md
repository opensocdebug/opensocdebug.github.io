# Open SoC Debug Web Site

This is the code for http://opensocdebug.org.

## Local development

### Get the code
Clone this repository from GitHub.

~~~
git clone https://github.com/opensocdebug/opensocdebug.github.io.git
~~~

### Setup
The setup follows the [GitHub documentation](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/).

Execute all the following commands **inside the directory that contains this README.md file**!

1. Ensure that you have Ruby 2.0.0 or higher installed. Check with `ruby --version`.
   If you're using rbenv to switch between ruby versions, run `rbenv local 2`
2. Install bundler: `gem install bundler`
3. Download all dependencies: `bundle install`

### Build the site locally
~~~
bundle exec jekyll serve
~~~

Now you can point your web browser to the URL reported as "Server address" from the previous command, usually that is http://127.0.0.1:4000.

