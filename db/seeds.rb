# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActorsGroup.delete_all
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

conseilFederal = ActorsGroup.create!(
  name: 'Conseil fédéral',
  mission: '',
  category: true,
  france: true,
  swiss: true,
  nuts: 4,
  administration: false,
  executive: true,
  legislative: false)

conseilEtat = ActorsGroup.create!(
  name: 'Conseil d\'Etat',
  mission: '',
  category: true,
  france: false,
  swiss: true,
  nuts: 3,
  administration: false,
  executive: true,
  legislative: false)

conseilCommNE = ActorsGroup.create!(
  name: 'Conseil communal (NE)',
  mission: '',
  category: true,
  france: true,
  swiss: true,
  nuts: 1,
  administration: false,
  executive: true,
  legislative: false)

assembleeFederale = ActorsGroup.create!(
  name: 'Assemblée fédérale',
  mission: '',
  category: true,
  france: true,
  swiss: true,
  nuts: 4,
  administration: false,
  executive: false,
  legislative: true)

conseilNational = ActorsGroup.create!(
  name: 'Conseil national',
  mission: '',
  category: true,
  france: false,
  swiss: true,
  nuts: 4,
  administration: false,
  executive: false,
  legislative: true)

conseilEtats = ActorsGroup.create!(
  name: 'Conseil des Etats',
  mission: '',
  category: true,
  france: false,
  swiss: true,
  nuts: 4,
  administration: false,
  executive: false,
  legislative: true)

grandConseil = ActorsGroup.create!(
  name: 'Grand Conseil',
  mission: '',
  category: true,
  france: false,
  swiss: true,
  nuts: 3,
  administration: false,
  executive: false,
  legislative: true)

conseilGeneralNE = ActorsGroup.create!(
  name: 'Conseil général (NE)',
  mission: '',
  category: true,
  france: true,
  swiss: true,
  nuts: 1,
  administration: false,
  executive: false,
  legislative: true)

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

case Rails.env
when "development"
  User.create!(
    pseudo: 'tototutu',
    password: 'tototutu')
end