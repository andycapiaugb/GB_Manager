module ContractsHelper
  def add_replacement_link(name)
    link_to_function name do |page|
        page.insert_html :bottom, :replacements, :partial => 'replacing', :object => Replacement.new
    end
  end
end
