class Info_Scroller < React::Component_Base
  param page: nil

  def render
    div do
      case params[:page]
      when :info_1
        'SOME OTHER SCROLLER THING FOR:' + params[:page]
      when :info_2
        'SECONDARY SCROLLER THING FOR:' + params[:page]
      else
      'SOME INFO SCROLLER THING'
      end
    end
  end
end
