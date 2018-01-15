#!/usr/bin/env ruby
require 'open-uri'
require 'sinatra'

get '/' do
  if params['pagerduty_feed']
    original_feed = open(params['pagerduty_feed']).read
    original_feed
  else
    erb :index
  end
end
