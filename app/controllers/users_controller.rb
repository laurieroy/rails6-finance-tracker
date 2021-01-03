class UsersController < ApplicationController
  def my_portfolio
    @tracked_stocks = current_user.stocks
  end

  def index
    # @users = User.all
    @tracked_friends = User.all
  end

  def my_friends
    @tracked_friends = current_user.friends
  end
end
