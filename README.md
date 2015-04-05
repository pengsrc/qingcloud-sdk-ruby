# QingCloud::SDK

SDK for QingCloud

## Install from RubyGems

	$ gem install qingcloud-sdk


## Install from Source Code

Get Code from Github:

	$ git clone git@github.com:prettyxw/qingcloud-sdk-ruby.git

Build and Install with Bundle:

    $ cd qingcloud-sdk-ruby && bundle exec rake install

## Install using Gemfile

Add this line to your application's Gemfile:

```ruby
gem 'qingcloud-sdk', git: 'https://github.com/prettyxw/qingcloud-sdk-ruby'
```

And then execute:

    $ bundle install

## Uninstall

Using gem to remove this package:

    $ gem uninstall qingcloud-sdk

## Getting Started

Before your start, please go to [QingCloud Console](https://console.qingcloud.com/access_keys/) to create a pair of QingCloud API keys.

## Code Example

### Create Connection and Service

```ruby
require 'qingcloud/sdk'

# Create Connection and Service

connector = QingCloud::SDK::Client::Connector.init(
    'qy_access_key_id', 'qy_secret_access_key'
)

service = QingCloud::SDK::Client::Service.new connector

# Describe Instances

service.describe_instances zone: 'ap1'

puts service.response

# Run Instances

service.run_instances(
    image_id: 'centos7x64b',
    cpu: 1,
    memory: 1024,
    login_mode: 'keypair',
    login_keypair: 'keypair-id',
    zone: 'ap1'
)

puts service.response

# Terminate Instances

service.describe_instances instances: ['instance-id'], zone: 'ap1'

puts service.response
```
### Describe Zones



## Contributing

1. Fork it ( https://github.com/prettyxw/qingcloud-sdk-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

LICENSE
-------
The GPL License. Read [GNU General Public License](http://www.gnu.org/licenses/gpl.html) for further information.