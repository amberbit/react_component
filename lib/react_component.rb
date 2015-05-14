module ReactComponent
  if defined? ::Rails::Engine
    require "react_component/engine"
  elsif defined? Sprockets
    require "react_component/sprockets"
  end
end
