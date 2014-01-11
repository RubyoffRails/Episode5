require 'rspec'
require 'bundler/setup'
require_relative '../db/setup'


require_relative '../models/page'
require_relative '../models/book'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

