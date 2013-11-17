class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show]

  def index
    @tickets = Ticket.all
  end

  def show

  end

  def new
    @ticket = Ticket.new
  end

  def create
    
  end
  
  def set_ticket
      @ticket = Ticket.find(params[:id])
    end
end
