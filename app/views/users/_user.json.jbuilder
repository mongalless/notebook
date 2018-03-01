json.extract! user, :id, :name_surname, :photo_link, :phone_number, :country_name, :town_name, :email, :facebook_link, :other_social_links, :created_at, :updated_at
json.url user_url(user, format: :json)
