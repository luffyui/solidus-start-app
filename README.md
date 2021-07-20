# Solidus Starter Frontend
[![Gem Version](https://badge.fury.io/rb/solidus_starter_frontend.svg)](https://badge.fury.io/rb/solidus_starter_frontend) [![CircleCI](https://circleci.com/gh/nebulab/solidus_starter_frontend.svg?style=shield)](https://circleci.com/gh/nebulab/solidus_starter_frontend)

`solidus_starter_frontend` is a new starter storefront for [Solidus][solidus].

This project aims to deliver a modern, minimal, semantic, and easy to extend
codebase for a more efficient bootstrapping experience.

**DISCLAIMER**: some Solidus extensions (the ones that depend on Solidus
Frontend) will not work with this project because they rely on defacing some
views items that don't exist here.

## Objectives
We aim to deliver:
- a minimal, semantic and accessible HTML skeleton
- a reusable component based architecture
- simple SASS styling strictly based on BEM
- the elimination of jQuery as a dependency by rewriting frontend functionality
in vanilla JavaScript

All of this while keeping and improving on the functionality of the current
[Solidus][solidus] frontend subcomponent.

## Installation

By default, the `solidus` gem also includes the standard frontend via the
`solidus_frontend` gem. To make this gem work, you need to exclude
`solidus_frontend` gem and manually include the rest of the Solidus
components.

### For a new store

Just run:

```bash
rails new store --skip-javascript
cd store
bundle add solidus_core solidus_backend solidus_api solidus_sample
bin/rails generate solidus:install
```

And type `y` when prompted if you want to install Solidus Auth Devise

### For existing stores

In your `Gemfile` replace:

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

And replace all the references of the string `Spree::Frontend::Config` in your
project with `SolidusStarterFrontend::Config`.

### Frontend installation

You can copy the starter frontend files to your project:

```shell
$ gem install solidus_starter_frontend
$ solidus_starter_frontend
```

These commands will install the gem globally and copy this project's views,
assets, routes and controllers to your project. You can change easily anything
that we created; this gives you a lot of freedom of customization.

Please note however that you won't be able to auto-update the storefront code
with the next versions released since this project's gem will not be present in
your Gemfile.

## Development
For information about contributing to this project please refer to this
[document](docs/development.md).

## About
[![Nebulab][nebulab-logo]][nebulab]

`solidus_starter_frontend` is funded and maintained by the [Nebulab][nebulab]
team.

We firmly believe in the power of open-source. [Contact us][contact-us] if you
like our work and you need help with your project design or development.

[solidus]: http://solidus.io/
[nebulab]: http://nebulab.it/
[nebulab-logo]: http://nebulab.it/assets/images/public/logo.svg
[contact-us]: http://nebulab.it/contact-us/

## License
Copyright (c) 2020 Nebulab SRLs, released under the New BSD License.
