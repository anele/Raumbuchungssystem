module ApplicationHelper
    def img_button_to(image_path, link)
      link_to(image_tag(image_path, :class=>"img", :size => "15x15", :title=>"Datensatz anzeigen"), link)
    end
    def img_delete_button_to(image_path, link)
      link_to(image_tag(image_path, :class=>"img", :size => "15x15", :title=>"Datensatz loeschen"), link, confirm: 'Are you sure?', method: :delete )
    end
    
end
