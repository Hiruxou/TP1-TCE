class ClientEtatsCivil < ApplicationRecord
  belongs_to :Client
  belongs_to :EtatsCivil
end
