class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :destroy]

  def index
    @tickets = Ticket.all
  end

  def show

  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    respond_to do |format|
      if @ticket.save
        format.html { redirect_to tickets_path, notice: 'Ticket was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url }
    end
  end

  protected

  def ticket_params
      params.require(:ticket).permit(:departure, :arrival, :transportation, :seat)
    end
  def set_ticket
      @ticket = Ticket.find(params[:id])
  end

  def sort_tickets!
    @tickets.each_with_index do |ticket, index|
      while index <= @tickets.length
        if ticket[:departure] == @tickets[index + 1][:arrival]
          @tickets[index + 1], @tickets[index] = @tickets[index], @tickets[index + 1]
        end
        index = index + 1
      end
    end
    @tickets
  end

end
