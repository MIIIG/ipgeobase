# frozen_string_literal: true

require "test_helper"
require "ipgeobase"

class TestIpgeobase < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_ip_data
    file = File.new('test/response.xml', "r")
    stub_request(:get, "http://ip-api.com/xml/8.8.8.8").
      with(
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'User-Agent'=>'Ruby'
        }).
      to_return(status: 200, body: file, headers: {})
      
    ip_meta = Ipgeobase.lookup('8.8.8.8')
    pp ip_meta
    assert ip_meta.city == "Ashburn"
    assert ip_meta.country == "United States"
    assert ip_meta.countryCode == "US"
    assert ip_meta.lat == "39.03"
    assert ip_meta.lon == "-77.5"
  end
end
