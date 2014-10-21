module ApplicationHelper
  def icon(glyph)
    content_tag(:span, nil, class: "glyphicon glyphicon-#{glyph}")
  end
end
