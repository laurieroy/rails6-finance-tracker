class UsersController < ApplicationController
  # current_user is from devise
  def index
    # @users = User.all
    @tracked_friends = User.all
  end

  def show
    @user = User.find(params[:id])
    @tracked_stocks = @user.stocks
  end

  def my_friends
    @tracked_friends = current_user.friends
  end

  def my_portfolio
    @user = current_user
    @tracked_stocks = current_user.stocks
  end

  def search
    if params[:friend].present?
      @tracked_friends = User.search(params[:friend])
      @tracked_friends = current_user.except_current_user(@tracked_friends)
      if @tracked_friends
        respond_to do |format|
          format.js { render partial: 'users/result_friend' }  
        end
      else
        respond_to do |format|
          flash.now[:alert] = "Friend not found"
          format.js { render partial: 'users/result_friend' }
        end
      end
    else
      respond_to do |format|
        flash.now[:alert] = "Please enter a name or email to search"
        format.js { render partial: 'users/result_friend' }
      end
    end
  end
end
