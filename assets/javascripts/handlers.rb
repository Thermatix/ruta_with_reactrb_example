Ruta::Handlers.define_for :main do

end

Ruta::Handlers.define_for :info_view do
  handle :scroller do |params,url|
    Info_Scroller.render(page: params[:switch_to])
  end

  handle :buttons do |params,url|
    Buttons.render(selected: params[:switch_to])
  end
end

Ruta::Handlers.define_for :sign_up do

end
