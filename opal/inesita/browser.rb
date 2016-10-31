module Inesita
  module Browser
    module_function

    Location = Document.JS[:location]
    History = Window.JS[:history]

    def path
      Location.JS[:pathname]
    end

    def query
      Location.JS[:search]
    end

    def decode_uri_component(value)
      JS.decodeURIComponent(value)
    end

    def push_state(path)
      History.JS.pushState({}, nil, path)
    end

    def on_pop_state(&block)
      Window.JS[:onpopstate] = block
    end

    def hash_change(&block)
      AddEventListener.call(:hashchange, block)
    end
  end
end
