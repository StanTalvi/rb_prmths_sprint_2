require_relative("./NotificationBoard")
require_relative("./MessageWithDate")
require_relative("./MessageSimple")
require_relative("./MessageWithDateAndTime")


my_board = NotificationBoard.new("Stan`s Board")
my_board.show_message(MessageSimple.new("I am generic?"))
p ""
my_board.show_message(MessageWithDate.new("I have date!"))
p ""
my_board.show_message(MessageWithDateAndTime.new("I have date & time!"))