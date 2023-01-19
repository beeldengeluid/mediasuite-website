[![Deploy to mediasuite-acc.rdlabs.beeldengeluid.nl](https://github.com/beeldengeluid/mediasuite-website/actions/workflows/deploy-master-test.yml/badge.svg)](https://github.com/beeldengeluid/mediasuite-website/actions/workflows/deploy-master-test.yml)
# Media Suite website

This is the code repository for the website content within the [CLARIAH Media Suite](https://mediasuite.clariah.nl)

The [main code repository](https://github.com/beeldengeluid/clariah-mediasuite) (private) for the Media Suite includes the automatically generated website content (contained in the `_site` directory mentioned below) of this repo [here](https://github.com/beeldengeluid/clariah-mediasuite/tree/master/src/website), however the code and contents of this repo can also function on its own. 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system. To get this website generated on a local machine, you need to install [Jekyl](https://jekyllrb.com/), a static site generator.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/downloads/) version 2.2.5 or above, including all development headers (ruby installation can be checked by running `ruby -v`)
- [RubyGems](https://rubygems.org/pages/download) (which you can check by running `gem -v`)
- [GCC](https://gcc.gnu.org/install/) and [Make](https://www.gnu.org/software/make/) (in case your system doesn't have them installed, which you can check by running `gcc -v`,`g++ -v`  and `make -v` in your system's command line interface)

See detailed installation instructions for your operating system at: https://jekyllrb.com/docs/installation/ 

### Installing

```sh
# Install Jekyll and Bundler gems through RubyGems
gem install jekyll bundler

# Change into your new directory
cd mediasuite-website

# Install dependencies
bundle install

# Build the site on the preview server
bundle exec jekyll serve

# Now browse to http://127.0.0.1:4000

# If you don't want to serve the site on localhost, but just want to build the site and watch for changes, 
# then use this instead of `bundle exec jekyll serve`:

# Build the source into the /_site directory 
bundle exec jekyll build

# Watch files for changes and automatically trigger build into /_site directory 
# (eg. for development in conjunction with clariah-mediasuite)
bundle exec jekyll build --watch
``` 

## Deployment

Just about any traditional web hosting provider will let you upload files to their servers over FTP. To upload a Jekyll site to a web host using FTP, simply run the `jekyll build` command and copy the contents of the generated `_site` folder to the root folder of your hosting account. This is most likely to be the `httpdocs` or `public_html` folder on most hosting providers.

## Built with

* [Jekyl](https://jekyllrb.com/)
* [Markdown](https://daringfireball.net/projects/markdown/)
* [Liquid](https://shopify.github.io/liquid/)

## Contact

* [Frank Sträter](https://github.com/frankstrater)

## Acknowledgments

* [Siteleaf](https://www.siteleaf.com/?via=frank), an excellent Content Management System for Jekyll powered websites.

## License

The content of this project itself is licensed under the [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/), and the underlying source code used to format and display that content is licensed under the [MIT license](LICENSE.md).
