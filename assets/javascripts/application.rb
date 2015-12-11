require 'manifest'
# set up render
Ruta::Context.handle_render do |object,element_id|
  element = if object.class == React::Element
    object
  else
    React.create_element(object)
  end
  React.render element, `document.getElementById(#{element_id})`
end

$document.ready do
  Ruta.start_app
end
