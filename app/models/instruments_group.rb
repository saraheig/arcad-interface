class InstrumentsGroup < ApplicationRecord
  has_many :instruments, dependent: :destroy
  before_validation :strip_blanks

  validate :check_presence_namech_or_namefr
  validates_uniqueness_of :name_ch, :scope => :name_fr, :message => 'La combinaison nom suisse - nom français doit être unique.'
  validates_length_of :name_ch, :maximum => 50, :message => 'Le nom suisse de la catégorie d\'instruments doit avoir maximum 50 caractères.'
  validates_length_of :name_fr, :maximum => 50, :message => 'Le nom français de la catégorie d\'instruments doit avoir maximum 50 caractères.'
  validates_length_of :abbrev_ch, :maximum => 10, :message => 'L\'abréviation suisse de la catégorie d\'instruments doit avoir maximum 10 caractères.'
  validates_length_of :abbrev_fr, :maximum => 10, :message => 'L\'abréviation française de la catégorie d\'instruments doit avoir maximum 10 caractères.'
  validates_length_of :description, :maximum => 500, :message => 'La description de la catégorie d\'instruments doit avoir maximum 500 caractères.'
  validates_length_of :country, :maximum => 20, :message => 'Le pays de la catégorie d\'instruments doit avoir maximum 20 caractères.'

  # Custom validation
  def check_presence_namech_or_namefr
    if self.name_ch == "" && self.name_fr == ""
      errors.add(:name_ch, "La catégorie d\'instruments doit avoir un nom suisse ou un nom français (ou les deux).")
    end
  end

  def strip_blanks
    self.name_ch = self.name_ch.strip
    self.name_fr = self.name_fr.strip
    self.abbrev_ch = self.abbrev_ch.strip
    self.abbrev_fr = self.abbrev_fr.strip
    self.description = self.description.strip
    self.country = self.country.strip
    self.descr_appeal_proc = self.descr_appeal_proc.strip
  end
end
