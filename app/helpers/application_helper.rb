module ApplicationHelper
  def markdown(text)
    renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
    renderer.render(text).html_safe
  end
end
