# Solidus Starter Frontend

[![CircleCI](https://circleci.com/gh/nebulab/solidus_starter_frontend.svg?style=shield)](https://circleci.com/gh/nebulab/solidus_starter_frontend)
<!--
[![codecov](https://codecov.io/gh/nebulab/solidus_starter_frontend/branch/master/graph/badge.svg)](https://codecov.io/gh/nebulab/solidus_starter_frontend)
-->

`solidus_starter_frontend` is a new starter store for [Solidus][solidus]. This
extension aims to deliver a modern, minimal, semantic and easy to extend
frontend codebase for a more efficient bootstrapping experience.

**WARNING: this is an experimental extension and still in a very early stage of
development.**

## Objectives

We aim to deliver:

- a minimal, semantic and accessible HTML skeleton
- a reusable component based architecture
- simple SASS styling strictly based on BEM
- the elimination of jQuery as a dependency by rewriting frontend functionality
in vanilla JavaScript

All of this while keeping and improving on the functionality of the current
[Solidus][solidus] starter store.

## Installation

By default, the `solidus` gem also includes the standard frontend via
the `solidus_frontend` gem. To make this extension work, you need to
exclude it and manually include all the other Solidus components.

You need to replace:

```ruby
gem 'solidus'
```

with:

```ruby
gem 'solidus_core'
gem 'solidus_api'
gem 'solidus_backend'
gem 'solidus_sample'
```

Install our binary in the system: `gem install solidus_starter_frontend`

Execute our generator that will copy our component files in your project:
`solidus_starter_frontend`. Now you can start to customize your local views.

If Solidus was already installed with solidus_frontend you will have to change
all `Spree::Frontend::Config` in `SolidusStarterFrontend::Config`.

## Usage

`solidus_starter_frontend` will just install a set of files in your solidus application
and let you customize them to jump-start your custom store design.

## Development

For information about contributing to this project please refer to this
[document](docs/development.md).

### Testing the extension

First bundle your dependencies, then run `bin/rake`. `bin/rake` will default to building the dummy
app if it does not exist, then it will run specs. The dummy app can be regenerated by using
`bin/rake extension:test_app`.

```shell
bin/rake
```

To run [Rubocop](https://github.com/bbatsov/rubocop) static code analysis run

```shell
bundle exec rubocop
```

When testing your application's integration with this extension you may use its factories.
Simply add this require statement to your spec_helper:

```ruby
require 'solidus_starter_frontend/factories'
```

### Running the sandbox

To run this extension in a sandboxed Solidus application, you can run `bin/sandbox`. The path for
the sandbox app is `./sandbox` and `bin/rails` will forward any Rails commands to
`sandbox/bin/rails`.

Here's an example:

```
$ bin/rails server
=> Booting Puma
=> Rails 6.0.2.1 application starting in development
* Listening on tcp://127.0.0.1:3000
Use Ctrl-C to stop
```

### Updating the changelog

Before and after releases the changelog should be updated to reflect the up-to-date status of
the project:

```shell
bin/rake changelog
git add CHANGELOG.md
git commit -m "Update the changelog"
```

### Releasing new versions

Your new extension version can be released using `gem-release` like this:

```shell
bundle exec gem bump -v 1.6.0
bin/rake changelog
git commit -a --amend
git push
bundle exec gem release
```

## About

[![Nebulab][nebulab-logo]][nebulab]

`solidus_starter_frontend` is funded and maintained by the [Nebulab][nebulab] team.

We firmly believe in the power of open-source. [Contact us][contact-us] if you
like our work and you need help with your project design or development.

[solidus]: http://solidus.io/
[nebulab]: http://nebulab.it/
[nebulab-logo]: http://nebulab.it/assets/images/public/logo.svg
[contact-us]: http://nebulab.it/contact-us/

## License

Copyright (c) 2020 Nebulab SRLs, released under the New BSD License.
