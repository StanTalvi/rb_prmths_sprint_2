class ToDoItem
    require 'date'
    attr_reader :name, :text, :status, :id, :deadline # needed in ToDoList class
    
    @@id = 1 # initial template for tasks IDs
    
    def initialize(name, text, deadline_year = nil, deadline_month = nil, deadline_day = nil) # optional deadline
        @name = name
        @text = text
        @status = "Active"
        @id = @@id.to_s.rjust(6, '0') # converting ID template to a 6-digit string with meaningdul digits prepended by zeros to comply 6-length
        @deadline = Date.new(deadline_year, deadline_month, deadline_day) unless deadline_day == nil # optional deadline
        @@id += 1 # incrementing template for the further task IDs
    end
end

