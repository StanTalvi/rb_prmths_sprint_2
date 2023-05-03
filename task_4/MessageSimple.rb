require_relative("./Message")

class MessageSimple < Message
    def initialize(text)
        @text = super(text)
    end
end