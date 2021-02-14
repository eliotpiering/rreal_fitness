module ApplicationHelper
  def navbar_item(name, path, options = {})
    classes = "nav-link "
    classes += "active " if current_page?(path)

    content_tag(:li, class: "nav-item") do
      content_tag(:a, name, class: classes, aria_current: "page", href: path, **options)
    end
  end

  def bi_icon(icon, options = {})
    klasses = ["bi"].append(options.delete(:class)).compact
    content_tag :svg, options.merge(class: klasses, fill: "currentColor") do
      content_tag :use, nil, "xlink:href" => "#{asset_path "bootstrap-icons/bootstrap-icons.svg"}##{icon}"
    end
  end
end
