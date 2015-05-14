@ReactComponent = (definition) ->
  old_render = definition.render
  new_render = ->
    fun = old_render.toString()
    chunks = fun.split("{")

    for key, value of React.DOM
      unless key == 'var'
        chunks[1] = "var #{key} = React.DOM['#{key}'];\n" + chunks[1]

    fun = chunks.join("{")

    eval("(#{fun}).call(this);")

  definition.render = new_render

  React.createClass definition

