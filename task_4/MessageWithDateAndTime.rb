require_relative("./MessageWithDate")


class MessageWithDateAndTime < MessageWithDate
    def initialize(text)
        @text = super(text) + " #{Time.new.hour}:#{Time.new.min}:#{Time.new.sec}"
    end
end