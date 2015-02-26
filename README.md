# BlossomApi

Ruby wrapper for the [Blossom](http://blossom.io) API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'blossom_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blossom_api

## Usage

```ruby
# initiate project
my_project = BlossomApi::Project.new(
  organization_id: 'xxx',
  project_id: 'xxx',
  access_token: 'xxx'
)

# create card
card = my_project.create_card 'New feature', 'Description of the feature'

# update card
my_project.update_card card, 'Actually this feature', 'does this thing'
```

More features to come...


## Contributing

1. Fork it ( https://github.com/[my-github-username]/blossom_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
