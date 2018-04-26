class Instrument < ApplicationRecord
  belongs_to :instruments_group, optional: true

  before_validation :strip_blanks

  validates_presence_of :name, :message => 'Le nom de l\'instrument doit être spécifié.'
  validates_uniqueness_of :name, :case_sensitive => false, :message => 'Le nom de l\'instrument est déjà utilisé.'
  validates_length_of :name, :maximum => 250, :message => 'Le nom de l\'instrument doit avoir maximum 250 caractères.'
  validates_length_of :abbreviation, :maximum => 10, :message => 'L\'abréviation de l\'instrument doit avoir maximum 10 caractères.'
  validates_length_of :description, :maximum => 500, :message => 'La description de l\'instrument doit avoir maximum 500 caractères.'
  validates_numericality_of :instruments_group_id, :greater_than_or_equal_to => 0, :message => 'Choisir une catégorie d\'instruments pour cet instrument.'

  def strip_blanks
    self.name = self.name.strip
    self.abbreviation = self.abbreviation.strip
    self.description = self.description.strip
    self.planning = self.planning.strip
    self.transboundary = self.transboundary.strip
    self.descr_appeal_proc = self.descr_appeal_proc.strip
  end
end
