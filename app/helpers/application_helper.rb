module ApplicationHelper
  def header_menu_left
    default = capture do
      link_to 'https://www.elektra.com.mx/', "aria-label": "Inicio" do
        image_tag("elektra.svg")
      end
    end
    content_for(:header_menu_left) || default
  end

  def header_menu_right
    default = capture do
      link_to root_path, "aria-label": "Inicio" do
        image_tag("vink-70x22.png", height: "22px")
      end
    end

    content_for(:header_menu_right) || default
  end

  def header_title
    content_for(:header_title)
  end

end
