require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(pigeon_data)
 pigeon_names = []
 pigeon_list = {}
 pigeon_names << pigeon_data[:gender][:male]
 pigeon_names << pigeon_data[:gender][:female]
 pigeon_names = pigeon_names.flatten
 pigeon_names.each {|name| pigeon_list[name] = {}}
 #pigeon_list => {"Alex"=>{}, "Theo"=>{}, "Peter Jr."=>{}, "Andrew"=>{}, "Lucky"=>{}, "Queenie"=>{}, "Ms. K"=>{}}
 pigeon_list.each do |name, chars|
   pigeon_data.each do |data_kind, char_hash|
     pigeon_list[name][data_kind] = []
     char_hash.each do |pheno, names_with_pheno|
       if names_with_pheno.include?(name)
         pigeon_list[name][data_kind] << pheno.to_s
       end
     end
   end
 end
 pigeon_list
end

nyc_pigeon_organizer(pigeon_data)
