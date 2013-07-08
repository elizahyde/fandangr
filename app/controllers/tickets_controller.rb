class TicketsController < ApplicationController
  def purchase
    @ticket = User.find(params[:id])
  end

  def show
    @movie = User.find(params[:id])
    @ticket = Ticket.find(params[:id])
    @ticket = Ticket.find(params[:time])
  end
end