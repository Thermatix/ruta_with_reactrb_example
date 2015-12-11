Ruta::Handlers.define_for :main do

end

Ruta::Handlers.define_for :info_view do
  handle :scroller do |params,url|
    puts Info_Scroller.methods.sort
    Info_Scroller.render(page: params[:switch_to]).as_node
  end
end

Ruta::Handlers.define_for :sign_up do

end
