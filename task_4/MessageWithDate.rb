require_relative("./MessageSimple")


class MessageWithDate < MessageSimple
    def initialize(text)
        @text = super(text) + " #{Time.new.year}/#{Time.new.month}/#{Time.new.day}"
    end
end