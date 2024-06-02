# Policygen

Policygen helps you setup and publish Privacy Policies and Terms of Service policies to your site with ease.
Simply set your config in the initializer and we'll do the hard work for you.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'policygen'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install policygen
```

#### Run the installer

To setup the policygen config file in your rails project run

```bash
rails generate policygen:install
```

#### If using Tailwind as your css framework

Add the following to `app/config/tailwind.config.js`

```js
module.exports = {
  content: [
    './public/*.html',
    ...,
    getPolicygenViewPath()
  ]
}

function getPolicygenViewPath() {
  const { execSync } = require("child_process");
  const path = execSync("bundle show policygen").toString().trim();
  return `${path}/**/*.{erb,html,rb}`;
}
```

## Usage

Policygen mounts two view helpers to render your policies into any view you want to setup. The contents are driven by the config defined in `policygen.rb`

Once you've answered all the config questions you're ready to render your privacy and terms page.

#### Privacy Policy

```ruby
<div class="whatever-your-container-is">
  <%= privacy_policy %>
</div>
```

#### Terms Policy

```ruby
<div class="whatever-your-container-is">
  <%= terms_of_service %>
</div>
```

### Styling your policies

#### Custom CSS

```css
/* The outmost container class */
.policygen-container {
}
/* The h1 header class */
.policygen-h1 {
}
/* The h2 header class */
.policygen-h2 {
}
/* The h3 header class */
.policygen-h3 {
}
/* The section class, break/margin between each section of the policy */
.policygen-section {
}
/* Body text, the paragraph text within each section */
.policygen-body-text {
}
/* Unordered lists */
.policygen-ul {
}
/* Ordered list */
.policygen-ol {
}
/* Bold paragraph class */
.policygen-bold {
}
/* Link class, remember to have a hover on this class */
.policygen-link {
}
```

#### Tailwindcss

You can change the colors used

```ruby
config.tailwind_config = {
  heading_color: "text-gray-900",
  body_color: "text-gray-800",
  link_color: "text-blue-500 hover:text-blue-700"
}
```

## Development

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/imothee/policygen. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/imothee/policygen/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Policygen project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/imothee/policygen/blob/main/CODE_OF_CONDUCT.md).
