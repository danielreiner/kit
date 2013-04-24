module ApplicationHelper

  def button(text, url, options = {})
    options[:class] = add_class_name('btn-styled', options[:class])
    link_to(text.html_safe, url, options)
  end

  def add_class_name(class_name, names)
    if names.blank?
      class_name
    else
      names.split(' ').push(class_name).uniq.join(' ')
    end
  end

  def category_search_radio_group(radio_name, options,current_value)
    current_value = -1 unless !current_value.blank?
    content_tag(:ul) do
      options.collect do |name, value|
        is_checked = current_value.to_s == value.to_s
        content_tag(:li, :class => ('active' if is_checked)) do
          radio_button_tag(radio_name, value, is_checked, :id => "#{radio_name}_#{name}") +
          label_tag("#{radio_name}_#{name}", name)
        end
      end.join.html_safe
    end
  end

end
