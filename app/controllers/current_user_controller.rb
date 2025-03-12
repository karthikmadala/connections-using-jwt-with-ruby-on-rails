class CurrentUserController < ApplicationController
  before_action :authenticate_user!
  def index
    render json: {
      data: UserSerializer.new(current_user).serializable_hash[:data][:attributes],status: { code: 200}
    }
  end
end
