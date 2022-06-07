require "happymapper"

class IpData
	include HappyMapper

	tag "meta"
	element :city, String, tag: 'city'
	element :country, String, tag: 'country'
	element :countryCode, String, tag: 'code'
	element :lat, String, tag: 'latitude'
	element :lon, String, tag: 'longitude'
end