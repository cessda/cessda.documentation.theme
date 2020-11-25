# jekyll-cessda-docs

CESSDA theme for just-the-docs. These are the source files for building the gem.

## Building and pushing

1. set up git and RubyGems user. Instructions here: <https://jekyllrb.com/docs/themes/#publishing-your-theme>
2. Update the file jekyll-cessda-docs.gemspec with the new version number, for example:
spec.version       = "0.1.4"
3. Build the gem:

	```sh
	gem build jekyll-cessda-docs.gemspec
	```

4. Push to Rubygems.org:

	```sh
	gem push jekyll-cessda-docs-*.gem
	```

## Installing

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-cessda-docs"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-cessda-docs
```

And then execute:

```sh
bundle
```

Or install it yourself as:

```sh
gem install jekyll-cessda-docs
```

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled. To add a custom directory to your theme-gem, please edit the regexp in `jekyll-cessda-docs.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
