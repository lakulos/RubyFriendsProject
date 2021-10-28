json.extract! friendsdb, :id, :First_Name, :Last_Name, :Email, :Phone_Number, :Twitter, :created_at, :updated_at
json.url friendsdb_url(friendsdb, format: :json)
