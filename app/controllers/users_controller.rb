class UsersController < ApplicationController


  def show
    @name = current_user.name
    @tickets = current_user.id
  end

end
