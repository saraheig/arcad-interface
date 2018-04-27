class Domain < ApplicationRecord
  before_validation :strip_blanks

  validates_presence_of :name, :message => 'Le nom du domaine d\'actions doit être spécifié.'
  validates_uniqueness_of :name, :case_sensitive => false, :message => 'Le nom du domaine d\'actions est déjà utilisé.'
  validates_length_of :name, :maximum => 50, :message => 'Le nom du domaine d\'actions doit avoir maximum 50 caractères.'

  def strip_blanks
    self.name = self.name.strip
  end
end
