class UsersController < ApplicationController
  # current_user is from devise
  def except_current_user(users)
    users.reject { |user| user.id == self.id }
  end
  
  def index
    # @users = User.all
    @tracked_friends = User.all
  end

  def my_friends
    @tracked_friends = current_user.friends
  end

  def my_portfolio
    @tracked_stocks = current_user.stocks
  end

  def search
    if params[:friend].present?
      @friends = User.search(params[:friend])
      @friends = current_user.except_current_user(@friends)
      if @friends
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
