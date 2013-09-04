module ProductsHelper
  def hide_filter(id)
    params[:"#{id}"].present? ? '' : 'hide'
  end

  def show_filter(id)
    params[:"#{id}"].present? ? 'hide' : ''
  end
end
