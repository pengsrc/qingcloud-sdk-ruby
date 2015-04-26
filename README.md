# QingCloud::SDK

SDK for QingCloud

[![Gem Version](https://badge.fury.io/rb/qingcloud-sdk.svg)](http://badge.fury.io/rb/qingcloud-sdk)

## Install from RubyGems

	$ gem install qingcloud-sdk

## Install using Gemfile

Add this line to your application's Gemfile:

```ruby
gem 'qingcloud-sdk'
```

or

```ruby
gem 'qingcloud-sdk', git: 'https://github.com/prettyxw/qingcloud-sdk-ruby'
```

And then execute:

    $ bundle install

## Install from Source Code

Get Code from Github:

	$ git clone git@github.com:prettyxw/qingcloud-sdk-ruby.git

Build and Install with Bundle:

    $ cd qingcloud-sdk-ruby
    $ bundle install
    $ bundle exec rake install

## Uninstall

Using gem to remove this package:

    $ gem uninstall qingcloud-sdk

## Notice
* All QingCloud API actions are available now.
* API action name is mapped to ruby method.
* API parameter name is mapped to ruby method parameter.
* API optional parameter can be ignored when call ruby method.

Example:
	
	Action: "DescribeInstances" -> "describe_instances"
	Parameter: "zone" -> "zone"
	Array Parameter: "instances.n" -> "instances_N"
	Array Parameter: "statics.n.static_type" -> "statics_N_static_type"

## Getting Started

Before your start, please go to [QingCloud Console](https://console.qingcloud.com/access_keys/) to create a pair of QingCloud API keys.

## Code Example

```ruby
require 'qingcloud/sdk'

# Create Connection and Service

connector = QingCloud::SDK::Client::Connector.init 'qy_access_key_id',
                                                   'qy_secret_access_key'

service = QingCloud::SDK::Client::Service.new connector

# Describe Instances

service.describe_instances zone: 'ap1'

puts service.response

# Run Instances

service.run_instances image_id: 'centos7x64b', 
                      cpu: 1, 
                      memory: 1024, 
                      login_mode: 'keypair', 
                      login_keypair: 'keypair-id', 
                      zone: 'ap1'
                      
puts service.response

# Terminate Instances

service.describe_instances instances_N: ['instance-id'], zone: 'ap1'

puts service.response
```

## Contributing

1. Fork it ( https://github.com/prettyxw/qingcloud-sdk-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

LICENSE
-------
The MIT License.