class ClientHasEnfant < ApplicationRecord
  belongs_to :Enfant
  belongs_to :Client
end
