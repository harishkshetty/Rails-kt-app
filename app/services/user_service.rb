
class UserService
  def initialize(user, params)
    @user = user
    @params = params
  end

  def update_user
    @user.name = @params[:name]
    @user.cityname = @params[:cityname]
    @user.save
  end
end

