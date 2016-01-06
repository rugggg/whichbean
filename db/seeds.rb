# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Bean 
# name:string producer_id:integer roaster_id:integer varietal:string preparation_id:string drying:string roast_id:integer --force
Bean.create!(name: 'Yirgacheffe', producer_id:1, roaster_id:1, varietal: 'Indeginous',preparation:'Semi-Washed',drying:'Sun',roast:'Medium')

#Producer name:string latitude:decimal longitude:decimal country:string region:string elevation:integer 
Producer.create!(name:'Reko Washing Station',latitude:6.072237,longitude:38.400736,country:'Ethiopia',region:'Kochare, Yirgacheffe',elevation_min:1850,elevation_max:2100)

#Roaster name:string 
Roaster.create!(name:'Intellegentsia')

=begin
bin/rails generate scaffold Harvest ripeness:integer flavour_profile_id:integer --force

bin/rails generate scaffold Drying method:string flavour_profile_id:integer --force

bin/rails generate scaffold FlavourProfile body:string fruit_notes:integer spice_notes:integer chocolate_notes:integer grain_notes:integer roast_notes:integer floral_notes:integer nut_notes:integer sugar_notes:integer savory_notes:integer --force


bin/rails generate scaffold Preparation type:string flavour_profile_id:integer --force

bin/rails generate scaffold Terrain elevation:integer groundwater:integer exposure:integer flavour_profile_id:integer --force

bin/rails generate scaffold Roast name:string strength:integer flavour_profile_id:integer --force

bin/rails generate scaffold Varietal name:string flavour_profile_id:integer --force
=end
