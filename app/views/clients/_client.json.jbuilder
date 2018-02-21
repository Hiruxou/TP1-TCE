json.extract! client, :id, :Prenom, :Nom, :DateNaissance, :nas, :Adress_id, :NombresEnfants, :CompteTaxesProprietaire, :created_at, :updated_at
json.url client_url(client, format: :json)
