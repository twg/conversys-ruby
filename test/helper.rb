require 'rubygems'
require 'test/unit'
require 'awesome_print'

require_relative '../lib/conversys'

class Test::Unit::TestCase
  def setup

    @org_code = ENV['ORG_CODE']
    @banner_code = ENV['BANNER_CODE']
    @api_key = ENV['API_KEY']

    @client = Conversys::Client.new(@api_key) do |config|
      # config.response :logger
    end
  end

  def assert_hash_contains_keys(keys, hash)
    keys.each do |key|
      assert hash.keys.include?(key), "Hash does not include key '#{key}'"
    end
  end
end
