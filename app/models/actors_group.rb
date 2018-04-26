class ActorsGroup < ApplicationRecord
  before_validation :strip_blanks

  validates_presence_of :name, :message => 'Le nom de la catégorie d\'acteurs doit être spécifié.'
  validates_uniqueness_of :name, :case_sensitive => false, :message => 'Le nom de la catégorie d\'acteurs est déjà utilisé.'
  validates_length_of :name, :maximum => 50, :message => 'Le nom de la catégorie d\'acteurs doit avoir maximum 50 caractères.'
  validates_length_of :mission, :maximum => 500, :message => 'La mission doit avoir maximum 500 caractères.'
  validates_inclusion_of :nuts, :in => [1, 2, 3, 4, 5], :allow_nil => true, :message => 'Les valeurs possibles pour le niveau NUTS sont 1, 2, 3, 4, 5 ou pas de valeur.'

  def strip_blanks
    self.name = self.name.strip
    self.mission = self.mission.strip
  end
end
