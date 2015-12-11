class Component_Base
  def initialize(native)
    @native = native
  end

  def self.render(args = {}, &block)
    React::RenderingContext.render(self, *args, &block)
  end

  def self.inherited(child)
    child.include React::Component
    # child.include React_State_Machine
  end

  def label_for(id,text=nil,hash={})
    label(*{html_for: id, id: "#{id}_label"}.merge!(hash)){text || id}
  end
end
