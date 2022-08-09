class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/home" do
    { message: "Good luck with your project!" }.to_json
  end

  post "/home" do
    card = Blessing.create(
      answer: params[:answer],
      question_id: params[:question_id]
    )
    card.to_json
  end

  get "/cards" do
    Category.all.to_json
  end

  delete "/cards/:id" do
    card = Blessing.find(params[:id])
    card.destroy
    card.to_json
  end

end
