class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users/:id" do
    users = User.find(params[:id])
    users.to_json
  end

  get "/donations" do
    donations = Donation.where('user_id == 1')
    donations.to_json
  end
 
  get "/categories" do 
    catedories = Categorie.all
    catedories.to_json
  end

  post "/donations" do 
    donation = Donation.create(
      amount: params[:amount],
      comment: params[:comment],
      user_id: params[:user_id],
      categorie_id: params[:categorie_id]
      )
    donation.to_json  
  end

  patch "/donations/:id" do
    donation = Donation.find(params[:id])
    donation.update(
      amount: params[:amount],
      comment: params[:comment]
    )
    donation.to_json
  end

  delete "/donations/:id" do
    donation = Donation.find(params[:id])
    donation.destroy
    donation.to_json
  end

end
