module ColorPalettesHelper 
  def bottom(color)    
    divs = link_to "Edit", edit_color_path(color)
    divs += " | "
    divs += link_to "Delete", color_path(color), method: :delete, class: 'red_text', data: {confirm: "1"}
    divs += "</div></li>"
  end

  def standard_top(color)
    "<li><div class=' color-swatch'><div class='swatch shadow' style='background: ##{color.hex};'></div><br />
    <b>#{display_color_number color.color_number}</b> #{color.name}<b> #{color.color_family_name}</b> #{in_selects? color}<br />" + bottom(color)
  end

  def pattern_top(color)
    "<li><div class=' color-swatch'><div class='swatch shadow' style='background: url(#{image_path color.image});'></div><br />
    <b>#{color.color_number}</b> #{color.name}<b> #{color.color_family_name}</b> #{in_selects? color}<br />" + bottom(color)
  end

  def divs(pattern, colors)
    divs = ""
    colors.each { |c| divs += send(pattern, c) }
    divs
  end

  def color_swatch_for(color_palette)    
    case color_palette.name.downcase
    when "selects"
      colors = Color.where(:selects => true).order(:color_number)
      divs = divs(:standard_top, colors)
    when "wall art"
      colors = color_palette.colors.order(:color_number)
      divs = divs(:pattern_top, colors)      
    when "wood"
      colors = color_palette.colors.order(:color_number)
      divs = divs(:pattern_top, colors)      
    when "stone"
      colors = color_palette.colors.order(:color_number)      
      divs = divs(:pattern_top, colors)      
    else
      colors = color_palette.colors.order(:color_number)
      divs = divs(:standard_top, colors)     
    end
    divs.html_safe
  end
end