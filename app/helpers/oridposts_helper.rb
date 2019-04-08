module OridpostsHelper
  def render_oridpost_status(oridpost)
    if oridpost.is_hidden
      content_tag(:span, "", :class => "fa fa-lock")
    else
      content_tag(:span, "", :class => "fa fa-globe")
    end
  end

  def render_oridpost_diaplay_status(oridpost)
    if oridpost.is_display
      content_tag(:span, "", :class => "fa fa-eye")
    else
      content_tag(:span, "", :class => "fa fa-eye-slash")
    end
  end
end
