Ruta::Router.define do
  for_context :main do
    for_context :info_view do
      map :i_switch, '/buttons/:switch_to', to: [:scroller,:buttons]
      map :sign_up, '/sign_up', context: :sign_up
    end
  end
  
  root_to :main
end
