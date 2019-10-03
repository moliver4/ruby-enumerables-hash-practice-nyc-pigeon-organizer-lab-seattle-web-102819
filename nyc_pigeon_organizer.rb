def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map{} do |trait, attributes|
    attributes.each do |details, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][trait] ||= []
        pigeon_list[name][trait] << details.to_s
      end
    end
  end
  return pigeon_list
end
