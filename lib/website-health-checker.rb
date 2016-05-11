#!/usr/bin/env ruby

require 'json'
require 'net/http'

class WebsiteHealthChecker
  HOST = 'foo'

  def self.check_hosts
    # resp = Net::HTTP.get_response(URI.parse(UPDATE_CENTER))
    # data = resp.body.gsub(/updateCenter\.post\(\n/,'').gsub(/\n\);/,'')
    # JSON.parse(data)
  end

  def self.check
    check_hosts
  end

  def self.healthcheck
    puts 'eat healthy'
  end
end
