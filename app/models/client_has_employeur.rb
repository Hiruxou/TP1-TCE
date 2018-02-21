class ClientHasEmployeur < ApplicationRecord
  belongs_to :Client
  belongs_to :Employeur
end
