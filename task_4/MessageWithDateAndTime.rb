require_relative("./MessageWithDate")


class MessageWithDateAndTime < MessageWithDate
    def initialize(text)
        @text = super(text) + "\nMessage time is #{Time.new.hour}:#{Time.new.min}:#{Time.new.sec}"
    end
end