require 'time'

module Lantus
# Author::  Sam (mailto:sam@cruft.co)
# License:: MIT
  # OnTrack uses really shitty date formats, including embedding a comma in
  # the CSV export file. Christ on a crutch
  class AwesomeDate < Hash

    # Parse the string 'd', looking for datetime information
    def initialize d
      t = Time.parse d

      # We extract loads of stuff. Might be useful one day
      self["timestamp"] = t
      self["tzoffset"] = t.strftime "%z"
      self["timezone"] = t.zone
      self["unixtime"] = t.to_i
      self["day"] = t.strftime("%A").downcase
      self["cardinal_day"] = t.strftime("%-d").to_i
      self["ordinal_day"] = "%d%s" % [
        self["cardinal_day"],
        self.ordinal(self["cardinal_day"])
      ]
      self["month"] = t.strftime("%B").downcase
      self["date"] = t.strftime "%F"
      self["time"] = t.strftime "%T #{self['timezone']}" 
      self["short_time"] = t.strftime "%H:%M"
      self["nice_date"] = "%s %s %s" % [
        self["day"],
        self["month"],
        self["ordinal_day"]
      ]
    end

    def ordinal cardinal
      last_digit = cardinal % 10
      case last_digit
        when 1
          "st"
        when 2
          "nd"
        when 3
          "rd"
        else
          "th"
      end
    end
  end
end
