class Adress < ApplicationRecord
    has_many :client
    validates :NumeroCivique, :Rue, :Ville, :CodePostal, :Province, presence: true
end
