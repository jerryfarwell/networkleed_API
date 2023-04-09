class MembersController < ApplicationController
  def show 
    user = get_user_from_token
    render json: {
      message: "if you see this your in !",
      user: user
    }
  end

  private

  def get_user_from_token
     jwt_playload = JWT.decode(request.headers['authorisation'].split('')[1],
                  Rails.application.credentials.devise[:jwt_secret_key]).first
     user_id = jwt_playload['sub']
     user = User.find(user_id.to_s)
  end
end
