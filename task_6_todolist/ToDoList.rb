require_relative("./ToDoItem")

class ToDoList
    
    def initialize(name)
        @name = name
        @list = {}
    end

    def add_task(name, text, year = nil, month = nil , day = nil)
        task = ToDoItem.new(name, text, year, month, day)
        @list[task.id] = [task.name, task.text, task.status] # Мабуть треба переробить на геш гешів
        (task.deadline.nil?) ? @list[task.id] << "N/A" : @list[task.id] << task.deadline # Може через nil краще?
    end
    
    def complete_task(id)
        @list[id.to_s.rjust(6, '0')][2] = "Complete"
    end

    def delete_task_soft(id) #marks a task as deleted
        @list[id.to_s.rjust(6, '0')][2] = "Deleted"
    end

    def delete_task_hard(id) #actually deletes a task completely
        @list.delete(id.to_s.rjust(6, '0'))
    end

    #додати методи для зміни інших змінних завдання (name, text)
    
    def alter_deadline(id, year = nil, month = nil , day = nil)
        @list[id.to_s.rjust(6, '0')][3] = Date.new(year, month, day) unless day == nil
    end

    def show_tasks #shows tasks except soft- & hard-deleted ones
        self.list_name
        puts "*Tasks*"
        self.list_elements("Active", "Complete")       
    end

    def show_active_only_tasks
        self.list_name
        puts "*Active tasks*"
        self.list_elements("Active")  
    end

    def show_completed_only_tasks
        self.list_name
        puts "*Completed tasks*"
        self.list_elements("Complete")  
    end

    def show_soft_deleted_only
        self.list_name
        puts "*Deleted tasks*"
        self.list_elements("Deleted")
    end

    private 
    def list_name # universal method for list name output
       puts "***#{@name}***"
    end

    def list_elements(*condition) # universal method for task elements output
        @list.each { |k, v| puts "Task # #{k}\n#{v[0].upcase}\n#{v[1]}\nStatus: #{v[2]}\nDeadline: #{v[3]}\n#{time_left(v[3])}" if v[2] == condition[0] || v[2] == condition[1] }
        #Треба щось рішати із губкою. І дедлайн показувати тільки якщо є(?).
        #Окремі методи для кожної змінної (?)
        #Вже після переводу @list з гешу масивів на геш гешів
    end

    def time_left(deadline)
        "Time left (days): #{deadline == "N/A" ? "N/A" : "#{(deadline - Time.now.to_date).to_i}"}"
    end
    
end



