module OridpostsHelper
  def render_oridpost_status(oridpost)
    if oridpost.is_hidden
      content_tag(:span, "", :class => "fa fa-lock")
    else
      content_tag(:span, "", :class => "fa fa-globe")
    end
  end
end
