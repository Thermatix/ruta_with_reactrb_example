Ruta::Context.define :main do
  element :header do
    Header
  end

  sub_context :info, :info_view

  element :footer do
    Footer
  end
end


Ruta::Context.define :info_view do
  element :hero do
    Hero_Image
  end

  element :scroller do
    Info_Scroller
  end

  element :buttons do
    Buttons
  end
end

Ruta::Context.define :sign_up do
  element :sign_up_form do
    Sign_Up_Form
  end
end
