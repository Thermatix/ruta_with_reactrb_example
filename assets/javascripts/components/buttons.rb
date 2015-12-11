class Buttons < Component_Base
  def render
    div do
      {about: :info_1, get_started: :info_2, overview: :origin}.each do |button_name,value|
        button do
          button_name
        end.on(:click,&Ruta.navigate_to_ref(:i_switch,value))
      end
      button do
        'Sign Up'
      end.on(:click,&Ruta.navigate_to_ref(:sign_up))
    end
  end
end
