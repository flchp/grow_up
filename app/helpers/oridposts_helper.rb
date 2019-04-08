module OridpostsHelper
  def render_oridpost_status(oridpost)
    if oridpost.is_hidden
      "(Hidden)"
    else
      "(Public)"
    end
  end
end
