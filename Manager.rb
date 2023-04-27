# Створити три класи
# Person з атрибутами first_name, last_name, birthday
# Employee, який буде успадковуватися від Person і має додатковий атрибут salary
# Manager, який буде успадковуватися від Employee і має додатковий атрибут bonus
# Для кожного із класів визначити відвідний метод-конструктор (initialize)
# Також перевизначити метод to_s, який буде повертати рядок, щось на зразок
# Employee: Vasis Pupkinus with salary: 5000
# Для працівника зарплата - це лише значення атрибута salary, а для менеджера - це зарплата + бонус
# Приклад виконання програми (лише запускаючий файл)
# P.S. ВАЖЛИВО!!! Метод to_s має бути визначений ЛИШЕ в класі Employee

require_relative("./Employee")

class Manager < Employee
    def initialize(first_name, last_name, birthday, salary, bonus)
        super(first_name, last_name, birthday, salary)
        @salarybonus = (@salary + bonus)
    end
end


