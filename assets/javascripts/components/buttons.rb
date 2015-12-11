class Buttons < Component_Base
  def render
    div do
      'SOME BUTTONS'
      %w{info_1 info_1 origin}.each do |button_name|
        button do
          button_name
        end.on(:click,&Ruta.navigate_to_ref(:i_switch,button_name))
      end
    end
  end
end
