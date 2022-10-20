json.extract! user_trasaction, :id, :name, :photo, :description, :payment, :category_id, :created_at, :updated_at
json.url user_trasaction_url(user_trasaction, format: :json)
