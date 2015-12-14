class Buttons < React::Component_Base
    param selected: :origin

  def render
    div do
      button_list = {about: :info_1, get_started: :info_2, overview: :origin}.reject { |_,v| v == params[:selected]  }
      button_list.each do |button_name,value|
        button do
          button_name
        end.on(:click) do
          Ruta.navigate_to_ref(:info_view,:i_switch,value)
        end
      end
      button do
        'Sign Up'
      end.on(:click) do
        Ruta.navigate_to_ref(:info_view,:sign_up)
      end
    end
  end
end
