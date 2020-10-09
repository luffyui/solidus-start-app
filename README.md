# Solidus Starter Frontend
[![Gem Version](https://badge.fury.io/rb/solidus_starter_frontend.svg)](https://badge.fury.io/rb/solidus_starter_frontend) [![CircleCI](https://circleci.com/gh/nebulab/solidus_starter_frontend.svg?style=shield)](https://circleci.com/gh/nebulab/solidus_starter_frontend)

`solidus_starter_frontend` is a new starter store for [Solidus][solidus]. This
extension aims to deliver a modern, minimal, semantic and easy to extend
frontend codebase for a more efficient bootstrapping experience.

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
