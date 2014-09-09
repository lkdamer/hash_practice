class Event
  attr_accessor :type, :date, :venue, :guest_num, :host, :food, :beverages

  def initialize(hash)
    @type = hash[:type]
    @date = hash[:date]
    @venue = hash[:venue]
    @guest_num = hash[:guest_num]
    @host = hash[:host]
    @food = hash[:food]
    @beverages = hash[:beverages]
  end

end

queens_calendar = [
  {type: "wedding", date: "September 17th", venue: "Westminster Abbey", guest_num: 898, host: "Dr. & Mrs. Who", food: "curry", beverages: "champagne"},
  {type: "birthday party", date: "September 10th", venue: "Chuck E. Cheese", guest_num: 31, host: "Prince William", food: "pizza", beverages: "fizzy drinks"},
  {type: "polo match", date: "September 22nd", venue: "the Polo Club", guest_num: 309, host: "Prince Harry", food: "KFC", beverages: "Budwiser"},
  {type: "garden party", date: "September 9th", venue: "Frogmore", guest_num: 254, host: "Lady Crawley", food: "tiny little sandwiches", beverages: "Pimm's cup"},
  {type: "baptism", date: "September 20th", venue: "Westminster Abbey", guest_num: 28, host: "Princess Eugenie of York", food: false, beverages: false}
]

queens_calendar.each do |hash|
  event = Event.new(hash)
  puts event
  puts "At the #{event.type} on #{event.date}, #{event.guest_num} people will attend."
end
