# walrus-rails

JST style templates with walrus.js via Sprockets

## Summary

Write files named `app/assets/javascripts/templates/tmpl.js.wal`
and use them client-side like this:

``` javascript
window.walrus_templates["templates/tmpl"].compile(obj)
```

## Installation

Add `walrus-rails` to your Gemfile

``` ruby
gem "walrus-rails"
```

This will register a new template engine in `Sprockets` to handle `.wal` files

Make sure to include your templates in your main application.js, for example:

``` javascript
//= require_tree ./templates
```

You'll also need [walrus.js](http://github.com/jeremyruppel/walrus)

That's it!

## Configuration

You can change the namespace `walrus_templates` if you like:

``` ruby
# In some initialization code
Sprockets::WalrusTemplate.namespace = 'this.JST'
```
