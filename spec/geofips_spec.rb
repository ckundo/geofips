require 'geofips'

describe Geofips do
  describe Geofips::Location
  subject { Geofips::Location.new(fips_code) }
  
  let(:fips_code) { "002020" }
  let(:rows) {[{
    fips: fips_code,
    lat: 32.5349, 
    lng: -86.6428,
    ne_lat: 32.708213,
    ne_lng: -86.4111719, 
    sw_lat: 32.3075739,
    sw_lng: -86.9212369
  }]}

  before do
    CSV.stub(:read).and_return(rows)
  end
  
  its(:lat) { should == rows.first[:lat] }
  its(:lng) { should == rows.first[:lng] }
  its(:ne_lat) { should == rows.first[:ne_lat] }
  its(:ne_lng) { should == rows.first[:ne_lng] }
  its(:sw_lat) { should == rows.first[:sw_lat] }
  its(:sw_lng) { should == rows.first[:sw_lng] }
end
