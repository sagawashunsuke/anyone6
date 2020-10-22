class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    Ticket.create(ticket_params)
  end


  private

  def ticket_params
    params.require(:ticket).permit(:name).merge(user_id: current_user.id)
  end

  
end
