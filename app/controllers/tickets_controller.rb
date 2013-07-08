
class TicketsController < ApplicationController
  def purchase
    @ticket = Ticket.where(params[:movie_id]).where(params[:time])
    @tickets = Ticket.all
  end
end