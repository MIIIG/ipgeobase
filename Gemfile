# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in ipgeobase.gemspec
gemspec

gem "rake", "~> 13.0"

group :test do
  gem "minitest", "~> 5.0"
  gem "webmock", "~> 3.14"
end
group :development do
  gem "rubocop"
end
group :production do
  gem 'nokogiri-happymapper', require: 'happymapper'
end