def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map do |trait, attributes|
    attributes.each do |attribute, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][trait] ||= []
        pigeon_list[name][trait] << attribute.to_s
      end
    end
  end
  return pigeon_list
end
