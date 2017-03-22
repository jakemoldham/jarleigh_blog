# jarleigh

TODO: add description

## Requirements

* [Ruby](https://www.ruby-lang.org/)
* [Crystal](https://crystal-lang.org/)

## Installation

```text
$ git clone
$ cd jarleigh
$ make install
$ make run
```

## Development

Using [Guard](https://github.com/guard/guard) for development auto-reload. Just running the `guard` command will watch your app for changes. After you save your changes to one of the files, kemal will auto-reload for you. This includes the main app.cr, views, stylesheets and javascripts.

```text
$ guard
```

You can also load a development console with your app pre-loaded by running `make console`.

### Stylesheets

Add your main stylesheet file in to `src/assets/styles`. This file should end in `.sass` or `.scss` like `src/assets/styles/application.scss`. 
If you would like to break your styles in to multiple files (i.e. mixins, variables, header, etc...) just throw those files in to the same directory and name them `_whatever_you_want.scss`. Notice the `_` at the beginning. This is so sass doesn't compile separate files for each one. Then just be sure to `@import "whatever_you_want";` so it gets added in when compiled.

Using `make run` will first compile your styles, and then generate your `public/stylesheets/application.css` file. You can also compile at any time with `make assets`.

### Javascripts

Add your main javascript file in to `src/assets/scripts`. This file should end in `.es6` like `src/assets/scripts/application.es6`.
You can write full ES6 compatible javascript in these, and they will be compiled to cross-browser compatible scripts using [Babel](https://babeljs.io/) when your app is booted, or the `make assets` task is ran. When they are compiled, the source is placed in `public/javascripts/application.js` or whatever you named the script dot js.

## Deploying

Now that you have a handle on developing your Kemal app, you will want to deploy it! There's a lot of different methods to deploying an app in to production, and fez takes the [Capistrano](http://capistranorb.com/) appraoch.

1. Edit your `config/deploy.rb` file with the necessary changes.
2. Edit your `config/deploy/production.rb` file with more necessary changes
3. Run `cap production deploy`. 
4. Pray it all works!
