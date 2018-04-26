# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Actor.delete_all
ActorsGroup.delete_all
InstrumentsGroup.delete_all
User.delete_all

confederation = ActorsGroup.create!(
  name: 'Confédération',
  mission: '',
  category: true,
  france: false,
  swiss: true,
  nuts: 4,
  administration: true,
  executive: true,
  legislative: true)

canton = ActorsGroup.create!(
  name: 'Canton',
  mission: '',
  category: true,
  france: false,
  swiss: true,
  nuts: 3,
  administration: true,
  executive: true,
  legislative: true)

commune = ActorsGroup.create!(
  name: 'Commune',
  mission: '',
  category: true,
  france: true,
  swiss: true,
  nuts: 1,
  administration: true,
  executive: true,
  legislative: true)

groupCommunal = ActorsGroup.create!(
  name: 'Groupement communal',
  mission: '',
  category: true,
  france: true,
  swiss: true,
  nuts: 2,
  administration: true,
  executive: true,
  legislative: true)

admFederale = ActorsGroup.create!(
  name: 'Administration fédérale',
  mission: '',
  category: true,
  france: true,
  swiss: true,
  nuts: 4,
  administration: true,
  executive: true,
  legislative: false)

admCantonale = ActorsGroup.create!(
  name: 'Administration cantonale',
  mission: '',
  category: true,
  france: false,
  swiss: true,
  nuts: 3,
  administration: true,
  executive: false,
  legislative: false)

admCommunale = ActorsGroup.create!(
  name: 'Administration communale',
  mission: '',
  category: true,
  france: true,
  swiss: true,
  nuts: 1,
  administration: true,
  executive: false,
  legislative: false)

propTerrain = ActorsGroup.create!(
  name: 'Propriétaire de terrain',
  mission: '',
  category: false,
  france: true,
  swiss: true,
  nuts: 1,
  administration: false,
  executive: false,
  legislative: false)

Actor.create!([{
  name: 'Département du développement territorial et de l\'environnement de Neuchâtel',
  abbreviation: 'DDTE',
  country: 'Suisse',
  phone: '',
  link: 'http://www.ne.ch/autorites/DDTE/Pages/accueil.aspx',
  actors_group: admCantonale
},{
  name: 'Service de l\'aménagement du territoire de Neuchâtel',
  abbreviation: 'SAT',
  country: 'Suisse',
  phone: '',
  link: 'http://www.ne.ch/autorites/DDTE/SCAT/Pages/accueil.aspx',
  actors_group: admCantonale
},{
  name: 'Dicastère de l\'urbanisme, des bâtiments et des relations extérieures',
  abbreviation: 'DUBRE',
  country: 'Suisse',
  phone: '',
  link: '',
  actors_group: admCommunale
},{
  name: 'Service d\'urbanisme et de l\'environnement',
  abbreviation: '',
  country: 'Suisse',
  phone: '',
  link: '',
  actors_group: admCommunale
},{
  name: 'Office du développement territorial',
  abbreviation: 'ARE',
  country: 'Suisse',
  phone: '',
  link: '',
  actors_group: admFederale
},{
  name: 'STEP de la ville de la Chaux-de-Fonds',
  abbreviation: '',
  country: 'Suisse',
  phone: '',
  link: '',
  actors_group: admCommunale
}])

planDirCant = InstrumentsGroup.create!(
  name_ch: 'Plan Directeur Cantonal',
  name_fr: '',
  abbrev_ch: 'PDCN',
  abbrev_fr: '',
  description: '',
  country: 'Suisse',
  law: true,
  plan: true,
  appeal_proc: false,
  descr_appeal_proc: '')

loiFederale = InstrumentsGroup.create!(
  name_ch: 'Loi fédérale',
  name_fr: '',
  abbrev_ch: '',
  abbrev_fr: '',
  description: '',
  country: 'Suisse',
  law: true,
  plan: false,
  appeal_proc: false,
  descr_appeal_proc: '')

case Rails.env
when "development"
  User.create!(
    pseudo: 'tototutu',
    password: 'tototutu')
end