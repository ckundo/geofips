require "geofips/version"
require "csv"

module Geofips
  class Location
    attr_reader :lat, :lng, :ne_lat, :ne_lng, :sw_lat, :sw_lng

    def initialize(code)
      @lat = 0.0
      @lng = 0.0
      @ne_lat = 0.0
      @ne_lng = 0.0
      @sw_lat = 0.0
      @sw_lng = 0.0

      location_rows = CSV.read(File.expand_path('../data/locations.csv', __FILE__), { headers: true, header_converters: :symbol })
      location_row = find_by_code(location_rows, code)
    end

    private

    def find_by_code(locations, code)
      locations.each do |loc|
        if loc[:fips] == code
          @lat = loc[:lat]
          @lng = loc[:lng]
          @ne_lat = loc[:ne_lat]
          @ne_lng = loc[:ne_lng]
          @sw_lat= loc[:sw_lat]
          @sw_lng= loc[:sw_lng]
        end
      end
    end
  end
end
