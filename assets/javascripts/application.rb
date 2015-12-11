require 'manifest'
# set up render
Ruta::Context.handle_render do |object,element_id|
  React.render React.create_element(object), `document.getElementById(#{element_id})`
end

$document.ready do
  Ruta.start_app
end
