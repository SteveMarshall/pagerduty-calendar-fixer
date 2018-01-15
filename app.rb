#!/usr/bin/env ruby
require 'open-uri'
require 'icalendar'
require 'sinatra'

get '/' do
  if params['pagerduty_feed']
    original_feed = open(params['pagerduty_feed']).read.force_encoding('utf-8')
    calendar = Icalendar::Calendar.parse(original_feed)

    # Force DateTimes to be Dates
    calendar.first.events.each do |event|
      event.dtstart = Icalendar::Values::Date.new(event.dtstart)
      event.dtend = Icalendar::Values::Date.new(event.dtend)
    end

    calendar.first.to_ical
  else
    erb :index
  end
end
