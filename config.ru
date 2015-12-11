
%w{json opal reactive-ruby opal-browser ruta sinatra pp}.each do |lib|
  require lib
end



opal = Opal::Server.new {|s|
  s.append_path 'assets/javascripts/'
  s.append_path 'assets/images/'
  s.main = 'application'
}

sprockets   = opal.sprockets
prefix      = '/assets/javascripts'
maps_prefix = '/__OPAL_SOURCE_MAPS__'
maps_app    = Opal::SourceMapServer.new(sprockets, maps_prefix)

# Monkeypatch sourcemap header support into sprockets
::Opal::Sprockets::SourceMapHeaderPatch.inject!(maps_prefix)

map maps_prefix do
  run maps_app
end

map prefix do
  run sprockets
end

opal_latest = false


opal =
if opal_latest
  ::Opal::Sprockets.javascript_include_tag('application', sprockets: sprockets, prefix: prefix, debug: true)
else
  <<-HEADER
  <script src="#{prefix}/application.js"></script>
  <script>#{Opal::Processor.load_asset_code(sprockets, 'application')}</script>
  HEADER
end

style_frame_work = <<-CSS_FILES
<link href="http://cdn.muicss.com/mui-0.2.1/css/mui.min.css" rel="stylesheet" type="text/css" />
<script src="http://cdn.muicss.com/mui-0.2.1/js/mui.min.js"></script>
CSS_FILES
# <script src=""></script>


get '/' do
  <<-HTML
    <!doctype html>
    <html>
      <head>
        <meta charset="utf-8">
        #{opal}
      </head>
      <body>
      </body>
    </html>
  HTML
end


run Sinatra::Application
