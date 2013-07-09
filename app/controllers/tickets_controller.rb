class TicketsController < ApplicationController
  def purchase
    @tickets = Ticket.where(:movie_id => params[:movie_id]).where(:time => params[:time]).sort
  end

  def buy
    @ticket = Ticket.find(params[:ticket_id])
    @ticket.update_attributes(:user_id => current_user.id)
    render nothing: true
  end
end
