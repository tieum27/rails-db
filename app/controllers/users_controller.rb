class UsersController < ApplicationController
  def index
  end

  def register
    @user = User.new
    @user.full_name = params[:full_name]
    @user.address = params[:address]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zipcode = params[:zipcode]
    @user.country = params[:country]
    @user.email = params[:email]
    @user.user_name = params[:user_name]
    @user.password = params[:password]

    if @user.save
      cookies[:user_id] = @user.id
      flash[:notice] = "Thank you  '#{@user.full_name}'. You have successfully registered!"
    else
      render text: 'Could not save user'
    end
  end

  def phone
    @phone = Phone.new
    @phone.phone1 = params[:phone1]
    @phone.phone2 = params[:phone2]
    @phone.phone3 = params[:phone3]
    @phone.user_id = cookies[:user_id]

    if @phone.save
      cookies[:phone1] = @phone.phone1
      flash[:notice] = "Thank you  '#{cookies[:full_name]}'. You have successfully enter your phone number!"
    else
      render text: 'Could not save your phone number'
    end
  end

  def user_find
    @user = User.find_by_user_name(params[:user_find])
    @phones = @user.phone
    render 'register.html.erb'
  end
end
