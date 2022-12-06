# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Color.create(:name => 'ピーチピンク', :code => '#F5C5B5', :css_class => 'F5C5B5', :season_type => 1, :category_id => 1)
Color.create(:name => 'オーロラ', :code => '#EB9180', :css_class => 'EB9180', :season_type => 1, :category_id => 1)