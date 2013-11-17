require 'json'
 
def create_ticket_from_json json
    Ticket.create departure: json["Departure"], arrival: json["Arrival"], transportation: json["Transportation"], seat: json["Seat"]
end
 
def load_tickets_from_file(file)
  File.foreach(file) do |l|
    unless l.blank?
      json = JSON.parse(l)
      create_ticket_from_json(json)
    end
  end
end
 
def load_default_file
  current_dir = File.dirname(__FILE__)
  file = File.join(current_dir, 'tickets.json')
  load_tickets_from_file file
end
