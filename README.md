README
======
##Task
You are given a stack of boarding cards for various transportations that will take you from a
point A to point B via several stops on the way. All of the boarding cards are out of order
and  you  don't  know  where  your  journey  starts,  nor  where  it  ends. Each  boarding  card
contains information  about  seat assignment, and means of transportation (such as flight
number, bus number etc).

Create a rails app that lets you sort this kind of list and present back a description of how
to complete your journey. For instance, the app should be able to take an unordered set of
boarding cards, provided in a format defined by you, and produce this list:
* Take train 78A from Madrid to Barcelona. Sit in seat 45B.
* Take the airport bus from Barcelona to Gerona Airport. No seat assignment.
* From Gerona Airport, take flight SK455 to Stockholm. Gate 45B, seat 3A. Baggage
drop at ticket counter 344.
* From Stockholm, take flight SK22 to New York JFK. Gate 22, seat 7B. Baggage will
we automatically transferred from your last leg.
* You have arrived at your final destination.

##Requirements
* Use object oriented RoR for the implementation.
* The structure of the code should be extendable to make building in support for any
means  of  transportation  /  extra  information  required  about  a  specific  type  of
transportation easy.
* The implementation of your sorting algorithm should work with any set of boarding
passes, as long as there is always an unbroken chain between all the legs of the
trip, i.e., it's one continuous trip with no interruptions.
* The algorithm  doesn't  need  to  consider  that departure  / arrival are in the correct
order. In fact there is no information about any such times on the boarding passes. It
is just  assumed  that  your  next  connection is waiting for you when you arrive at a
destination.

##Instructions
* Run Rails console by typing <code>rails c</code>
* Load tickets script
    <code>require './scripts/load_tickets.rb'</code> &&
    <code>load_default_file</code>
* Tickets are stored in JSON format at <code>./scripts/tickets.json</code>

##Approach
* No scaffolding
* Test first
* No GUI, focus on application logic and data entry format

I had no time for make sorting work.  I found my gap for this kind of algorithms in Ruby because I usually worked with Java and C++ and tried to use Ruby's Enumerator methods.
