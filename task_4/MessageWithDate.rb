require_relative("./Message")


class MessageWithDate < Message
    def initialize(text)
        @text = text + "\nMessage date is #{Time.new.year}/#{Time.new.month}/#{Time.new.day}"
        super(@text)
    end
end