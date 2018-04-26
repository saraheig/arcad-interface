class Actor < ApplicationRecord
  belongs_to :actors_group, optional: true

  before_validation :strip_blanks

  validates_presence_of :name, :message => 'Le nom de l\'acteur doit être spécifié.'
  validates_uniqueness_of :name, :case_sensitive => false, :message => 'Le nom de l\'acteur est déjà utilisé.'
  validates_length_of :name, :maximum => 250, :message => 'Le nom de l\'acteur doit avoir maximum 250 caractères.'
  validates_length_of :abbreviation, :maximum => 20, :message => 'L\'abréviation de l\'acteur doit avoir maximum 20 caractères.'
  validates_length_of :country, :maximum => 20, :message => 'Le pays de l\'acteur doit avoir maximum 20 caractères.'
  validates_length_of :phone, :maximum => 20, :message => 'Le numéro de téléphone de l\'acteur doit avoir maximum 20 caractères.'
  validates_numericality_of :actors_group_id, :greater_than_or_equal_to => 0, :message => 'Choisir une catégorie d\'acteur pour cet acteur.'

  def strip_blanks
    self.name = self.name.strip
  end
end
