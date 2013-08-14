module ColorPalettesHelper  
  def color_swatch_for(color_palette)
    divs = ""
    if color_palette.name.downcase == "selects"            
      Color.where(:selects => true).order(:color_number).each do |color|
        divs += "<li><div class=' color-swatch'><div class='swatch shadow' style='background: ##{color.hex};'></div><br />
                       <b>#{display_color_number color.color_number}</b> #{color.name}<b> #{color.color_foundation}</b> #{in_selects? color}<br />"
        divs += link_to "Edit", edit_color_path(color)
        divs += " | "
        divs += link_to "Delete", color_path(color), method: :delete, class: 'red_text', data: {confirm: "1"}
        divs += "</div></li>"
      end
    elsif color_palette.name.downcase == "wall art"            
      color_palette.colors.order(:color_number).each do |color|
        divs += "<li><div class=' color-swatch'><div class='swatch shadow' style='background: url(#{image_path color.image});'></div><br />
                       <b>#{color.color_number}</b> #{color.name}<b> #{color.color_foundation}</b> #{in_selects? color}<br />"
        divs += link_to "Edit", edit_color_path(color)
        divs += " | "
        divs += link_to "Delete", color_path(color), method: :delete, class: 'red_text', data: {confirm: "1"}
        divs += "</div></li>"
      end
    elsif color_palette.name.downcase == "wood"            
      color_palette.colors.order(:color_number).each do |color|
        divs += "<li><div class=' color-swatch'><div class='swatch shadow' style='background: url(#{image_path color.image});'></div><br />
                       <b>#{color.color_number}</b> #{color.name}<b> #{color.color_foundation}</b> #{in_selects? color}<br />"
        divs += link_to "Edit", edit_color_path(color)
        divs += " | "
        divs += link_to "Delete", color_path(color), method: :delete, class: 'red_text', data: {confirm: "1"}
        divs += "</div></li>"
      end
    elsif color_palette.name.downcase == "stone"            
      color_palette.colors.order(:color_number).each do |color|
        divs += "<li><div class=' color-swatch'><div class='swatch shadow' style='background: url(#{image_path color.image});'></div><br />
                       <b>#{color.color_number}</b> #{color.name}<b> #{color.color_foundation}</b> #{in_selects? color}<br />"
        divs += link_to "Edit", edit_color_path(color)
        divs += " | "
        divs += link_to "Delete", color_path(color), method: :delete, class: 'red_text', data: {confirm: "1"}
        divs += "</div></li>"
      end
    else
      color_palette.colors.order(:color_number).each do |color|
        divs += "<li><div class=' color-swatch'><div class='swatch shadow' style='background: ##{color.hex};'></div><br />
                       <b>#{display_color_number color.color_number}</b> #{color.name}<b> #{color.color_foundation}</b> #{in_selects? color}<br />"
        divs += link_to "Edit", edit_color_path(color)
        divs += " | "
        divs += link_to "Delete", color_path(color), method: :delete, class: 'red_text', data: {confirm: "1"}
        divs += "</div></li>"
      end
    end

    divs.html_safe
  end
end