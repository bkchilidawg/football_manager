# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
confrence_1 = Confrence.create!(name: 'Big 12', number_of_teams: 14, power_5?: true)

confrence_2 = Confrence.create!(name: 'SEC', number_of_teams: 14, power_5?: true)

team_1 = Team.create!(college_name: 'University of Oklahoma', conf_champs: 17, natl_champ?: true, confrence_id: confrence_1.id)
team_2 = Team.create!(college_name: 'University of Alabama', conf_champs: 29, natl_champ?: true, confrence_id: confrence_2.id)
