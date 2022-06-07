# frozen_string_literal: true

require_relative "ipgeobase/version"
require_relative "ipgeobase/ipdata"
require "webmock"
require "net/http"
require "addressable/template"

module Ipgeobase
  class Error < StandardError; end
  
  URL = "http://ip-api.com/xml/"

  def self.lookup(ip)
    template = Addressable::URI.parse("#{URL}#{ip}")
    res = Net::HTTP.get(template)

    IpData.parse(res)
  end
end
