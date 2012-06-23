# geoFIPS

Get latitude and longitude coordinates and bounds from FIPS location codes

## Installation

Add this line to your application's Gemfile:

    gem 'geofips'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geofips

## Usage

    require 'geofips'
    Geofips::Location.new('001025')
    # => #<Geofips::Location:0x007fba2410d3e0 @lat="31.6709", @lng="-87.8309", @ne_lat="31.991355", @ne_lng="-87.50093", @sw_lat="31.185486", @sw_lng="-88.1799583"> 

## Requirements

Ruby 1.9

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
