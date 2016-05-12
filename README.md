OpenWeatherMap
==============


Copyright &copy; 2016-2017, Markus These

Client libraries for checking a List of hosts.


OVERVIEW:
---------
This project is a simple client for checking a array of hosts.


DETAILS:
--------
This project is a simple client for checking a array of hosts. The return value shows the return-code. Redirections will be followed.

USAGE:
------

### Installation

Install website-health-checker by <tt>sudo gem install website-health-checker</tt>
Include this gem in your code as a require statement.

    require 'website-health-checker'

### Usage

The following example use <tt>net/http</tt> to return the return-code.

```ruby
#input: ARRAY of URLs
#return: return-codes of given URLs
WebsiteHealthChecker.check(['tse-c.de', 'herrthese.de'])

```

### Return
Example:

```ruby
"tse-c.de -> 200"
"herrthese.de -> 301 -> http://tse-c.de/ -> 200"
```
