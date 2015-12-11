puts 'yay routes!'
Ruta::Router.define do
  for_context :main do
    for_context :info_view do
      map :i_switch, '/buttons/:switch_to', to: :scroller
      map :sign_up, '/sign_up', context: :sign_up
    end
  end



  for_context :sign_up do

  end

  root_to :main
end
