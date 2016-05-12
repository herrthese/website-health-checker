#!/usr/bin/env ruby

require 'json'
require 'net/http'
require "net/https"
require 'pp'

class WebsiteHealthChecker

  def self.check_host(host)
    msg = host
    sep = " -> "
    resp = Net::HTTP.get_response(URI.parse("http://#{host}"))
    msg = msg << sep << resp.code
    if resp.code == "301"
      msg = msg << sep << resp.header['location']
      resp = Net::HTTP.get_response(URI.parse(resp.header['location']))
      msg = msg << sep << resp.code
    end
    pp msg
  end

  def self.check(hosts)
    hosts.each do | host |
      check_host(host)
    end
  end

  def self.healthcheck
    puts 'eat healthy'
  end
end

#WebsiteHealthChecker.check(['tse-c.de', 'herrthese.de'])
