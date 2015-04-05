# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qingcloud/sdk/version'

Gem::Specification.new do |spec|
    spec.name = 'qingcloud-sdk'
    spec.version = QingCloud::SDK::VERSION
    spec.authors = ['Peng Jingwen']
    spec.email = ['pengsrc@icloud.com']

    if spec.respond_to?(:metadata)
        spec.metadata['allowed_push_host'] = 'https://rubygems.org'
    end

    spec.summary = 'SDK for QingCloud'
    spec.description = 'SDK for QingCloud'
    spec.homepage = 'https://github.com/prettyxw/qingcloud-sdk-ruby'
    spec.license = 'GPL'

    spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    spec.bindir = 'exe'
    spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    spec.require_paths = ['lib']

    spec.add_development_dependency 'bundler', '~> 1.8'
    spec.add_development_dependency 'rake', '~> 10.0'
    spec.add_development_dependency 'rspec', '~> 3.2.0'
end