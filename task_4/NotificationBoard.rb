class NotificationBoard
    
    def initialize(board_name)
        @board_name = board_name
    end

    def show_message(message)
        display_message(message.text)
    end

    private

    def display_message(str)
        puts("*** #{str} ***")
    end

end