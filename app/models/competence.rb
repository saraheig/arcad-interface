class Competence < ApplicationRecord
  before_validation :strip_blanks
  
  validates_presence_of :name, :message => 'Le nom du champ de compétences doit être spécifié.'
  validates_uniqueness_of :name, :case_sensitive => false, :message => 'Le nom du champ de compétences est déjà utilisé.'
  validates_length_of :name, :maximum => 250, :message => 'Le nom du champ de compétences doit avoir maximum 250 caractères.'
 
  def strip_blanks
    self.name = self.name.strip
  end
end
