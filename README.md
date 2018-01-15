# `pagerduty-calendar-fixer`

A([nother](https://github.com/SteveMarshall/pagerduty-calendar-fixer-php))
little script to fiddle with [PagerDuty](https://www.pagerduty.com)'s
on-call calendars so that a daily rota shows up as all-day events
instead of for the exact hours. You probably only want this is your
rota is pretty standard from day to day.

## Trying it out locally

You can play with this locally, but you'll need a modern version of
Ruby and [bundler](http://bundler.io).

```bash
bundle install
bundle exec ./app.rb
# Then, in a new terminal:
open open http://localhost:4567`
```

It's worth running the real thing somewhere on the public internet. I
run my instance on Heroku.
