Ruta::Context.define :main do
  component :header do
    Header
  end

  sub_context :info, :info_view

  component :footer do
    Footer
  end
end


Ruta::Context.define :info_view do
  component :hero do
    Hero_Image
  end

  component :scroller do
    Info_Scroller
  end

  component :buttons do
    Buttons
  end
end

Ruta::Context.define :sign_up do
  component :sign_up_form do
    Sign_Up_Form
  end
end
