module ApplicationHelper
  def in_selects?(color)
    '<span style="margin-left: 8px; position: absolute; margin-top: 4px; dispaly: block; -webkit-transform: rotate(45deg); height: 12px; width: 12px; background: maroon;">&nbsp;</span>'.html_safe if color.selects
  end

  def display_color_number(color_number)    
    if color_number.to_i < 10
      "0#{color_number.to_i}"
    else
      "#{color_number.to_i}"
    end    
  end

  def link_to_add_fields(name, f, association, options={})
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, 'javascript:void(0)', class: "add_fields #{options[:class]}", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def is_current?(controller)
    "current-nav" if controller == params[:controller]
  end

  def current_icon?(controller, name)
    controller == params[:controller] ? "#{name} icon-white" : name
  end

  def link_to_icon(icon, name, path, options={})
    link_to("<i class='icon icon-#{icon}'></i> #{name}".html_safe, path, options)
  end

  def beta_tag    
    "<div id='beta-tag'>BETA<br /><small>v #{BETA_VERSION}</small></div>".html_safe
  end
end
