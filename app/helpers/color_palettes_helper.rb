module ColorPalettesHelper
  def bottom(color)        
    "#{link_to "Edit", edit_color_path(color)} | #{link_to "Delete", color_path(color), method: :delete, class: 'red_text', data: {confirm: '1'}} </div></li>"
  end

  def standard_back(color)
    "##{color.hex};'></div><br /><b>#{display_color_number color.color_number}</b>"
  end

  def pattern_back(color)
    "url(#{image_path color.image});'></div><br /><b>#{color.color_number}</b>"
  end

  def background(pattern=false, color)
    div = "<li><div class=' color-swatch'><div class='swatch shadow' style='background: "    
    div += pattern ? pattern_back(color) : standard_back(color)
    div += " #{color.name}<b> #{color.color_family_name}</b> #{in_selects? color}<br />"
    div += bottom(color)
  end

  def create_divs(pattern=false, colors)
    pattern = pattern == "pattern" ? true : false
    divs = ""
    colors.each { |c| divs += background(pattern, c) }
    divs
  end

  def color_swatch_for(color_palette)
    colors = color_palette.colors.order(:color_number)
    select = Color.where(:selects => true).order(:color_number)
    
    case color_palette.name.downcase
    when "selects"
      create_divs(select).html_safe
    when "wall art", "wood", "stone"
      create_divs("pattern", colors).html_safe    
    else
      create_divs(colors).html_safe
    end
  end
end