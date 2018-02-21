class Client < ApplicationRecord
  belongs_to :Adress
  has_many :Etude
  has_many :Institution
  accepts_nested_attributes_for :Adress, :allow_destroy => true
  accepts_nested_attributes_for :Etude, :allow_destroy => true
  accepts_nested_attributes_for :Institution, :allow_destroy => true
  validates :Nom, :Prenom, :nas, :NombresEnfants, :CompteTaxesProprietaire, presence: true
end
