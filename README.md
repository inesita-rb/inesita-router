# Inesita Router [![Gem Version](https://badge.fury.io/rb/inesita-router.svg)](http://badge.fury.io/rb/inesita-router) [![Code Climate](https://codeclimate.com/github/inesita-rb/inesita-router/badges/gpa.svg)](https://codeclimate.com/github/inesita-rb/inesita-router) [![Build Status](https://travis-ci.org/inesita-rb/inesita-router.svg?branch=master)](https://travis-ci.org/inesita-rb/inesita-router)

Router for [Inesita](https://github.com/inesita-rb/inesita) framework.

## Example

```ruby
class Router
  include Inesita::Router

  def auth
    unless store.logged_in?
      go_to('/login')
    end
  end

  def routes
    route '/', to: Home, on_enter: method(:auth)
    route '/list', to: List, on_enter: method(:auth)
    route '/login', to: Login
  end
end
```

## Thank you!

[![Become Patreon](https://c5.patreon.com/external/logo/become_a_patron_button.png)](https://www.patreon.com/bePatron?u=6912974)
