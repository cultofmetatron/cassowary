module ApplicationHelper
  
  
  def markdown(text)
    options = {:autolink => true, :space_after_headers => true, :no_intra_emphasis => true, :fenced_code_blocks => true}
    renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
    renderer.render(text).html_safe
  end
  
end
