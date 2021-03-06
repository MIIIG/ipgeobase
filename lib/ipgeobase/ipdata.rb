require "happymapper"

class IpData
  include HappyMapper

  tag "query"
  element :city, String, tag: 'city'
  element :country, String, tag: 'country'
  element :countryCode, String, tag: 'countryCode'
  element :lat, String, tag: 'lat'
  element :lon, String, tag: 'lon'
end