# betabot-octo-line-search

[![Build Status](https://travis-ci.org/gyng/betabot-octo-line-search.svg?branch=master)](https://travis-ci.org/gyng/betabot-octo-line-search)

```
<gyng> ~install https://raw.githubusercontent.com/gyng/betabot-octo-line-search/master/manifest.json save
<betabot> 🎉 Plugin octo installed.
<betabot> Reloaded.
<betabot> Configuration saved.

<gyng> ~octo hello?
<betabot> Hi, this is Hell!
```

This is an quick and dirty plugin for [betabot](https://github.com/gyng/betabot/). It finds the first line that matches a user-supplied regex from a page defined in the settings. Configure the target page in the settings JSON manually.

## Install

```
~install https://raw.githubusercontent.com/gyng/betabot-octo-line-search/master/manifest.json save
```

## Update

```
~update octo
```

## Use

```
<user> ~octo hello?
<betabot> Hi, this is Hell!
```

## Test

```
bundle install
bundle exec rspec
```
