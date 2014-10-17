class RestController < ApplicationController

  def create_user
    user = User.new
    user.email = params[:email]
    user.password = params[:password]

    user.save

    render json: user.to_json
  end

  def create_professional
    professional = Professional.new
    professional.name = params[:name]
    professional.cpf = params[:cpf]
    professional.bio = params[:bio]
    professional.user = User.find(email: params[:email])

    professional.save

    render json: professional.to_json
  end
end
