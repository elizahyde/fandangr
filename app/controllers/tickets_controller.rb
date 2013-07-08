class TicketsController < ApplicationController
  def purchase
    @tickets = Ticket.where(:movie_id => params[:movie_id]).where(:time => params[:time])
  end
end