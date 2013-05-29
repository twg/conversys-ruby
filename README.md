#conversys-ruby

Ruby client for the Conversys XML publishing service

## Usage

    require 'conversys'

    client = Conversys::Client.new('your_api_key') do |connection|
      # register Faraday middleware here
      # https://github.com/lostisland/faraday_middleware/wiki
    end

    response = client.get_stores('your_org_code', 'your_banner_code')
    response.status # 200
    response.body # hash with method accessors

## Development

You need to set some environment variables before you can run the tests

    export ORG_CODE=your_org_code
    export BANNER_CODE=your_banner_code
    export API_KEY=your_api_key

    rake
