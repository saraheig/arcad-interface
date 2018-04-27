# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Actor.delete_all
ActorsGroup.delete_all
Instrument.delete_all
InstrumentsGroup.delete_all

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

Instrument.create!([{
  name: 'Plan directeur cantonal Neuchâtelois - 2ème version',
  abbreviation: 'PDCn 2011',
  start_date: '22.06.2011',
  last_rev_date: '',
  description: '',
  planning: 'Instrument de mise en œuvre de l\'exécutif, le PDCn fixe les conditions de mise en œuvre opérationnelle de la conception directrice. Divisé en 3 volets : 
    Volet stratégique - projet territoire - reprend les 5 priorités de la conception et propose 2  ou 3 lignes d\'action pour chacune d\'entre elles ; 
    Volet opérationnel - fiche coordination ; 
    Volet opérationnel - carte synthèse',
  transboundary: 'Priorités politiques : 
    R- Relations extérieures: rayonner ;
    R.1 Améliorer la position du canton : coopération régionales, fiches R_11, R_12, R_13 ;
    R.2. Valoriser les domaines d\'excellence indsutrielle: fiche E_11 ;
    E - Economie: Inciter ;
    E.1 Soutenir un développement économique durable, fiches E_11, E_12, E_13 ;
    A - Accessibilité - relier ;
    A.2 - Viser un report modal fort vers les TP et les MD, fiches A_21 à A_27 ;
    A.3 - Réorganiser le réseau routier, fiches R_31 et R_32',
  appeal_proc: false,
  descr_appeal_proc: '',
  instruments_group: planDirCant
},{
  name: 'Loi fédérale sur l\'aménagement du territoire',
  abbreviation: 'LAT',
  start_date: '01.01.1980',
  last_rev_date: '01.05.2014',
  description: '',
  planning: 'Législation fédérale sur l\'aménagement du territoire : Loi limitée aux principes et aux outils.
    Avec la révision de 2014 (art.15 et 15a), les cantons sont obligés de revoir leur PDCn, obligeant ainsi les communes à revoir leur plan d\'affectation.',
  transboundary: 'Art.7 Al. 3 : "Les cantons contigus à la frontière nationale s’emploient à collaborer avec les autorités des régions limitrophes des pays voisins lorsque les mesures qu’ils prennent peuvent avoir des effets au-delà de la frontière."',
  appeal_proc: false,
  descr_appeal_proc: '',
  instruments_group: loiFederale
}])

case Rails.env
when "development"
  User.delete_all
  User.create!(
    pseudo: 'tototutu',
    password: 'tototutu')
end