require_relative("./ToDoItem")
require_relative("./ToDoList")

my_list = ToDoList.new("My First List")

my_list.add_task("My first task", "Go work plz", 2023, 12, 25) #will be completed and consequently soft_deleted, and then hard_deleted
my_list.add_task("My second task", "Now get a rest") #will get a deadline via a special method
my_list.add_task("My third task", "Pending")

my_list.show_tasks
p "======================================"
my_list.complete_task(1)
my_list.alter_deadline(2, 2023, 06, 20)
my_list.show_tasks
p "======================================"
my_list.show_active_only_tasks
p "======================================"
my_list.show_completed_only_tasks
p "======================================"
my_list.delete_task_soft(1)
my_list.show_soft_deleted_only
p "======================================"
my_list.delete_task_hard(1)
my_list.show_soft_deleted_only





