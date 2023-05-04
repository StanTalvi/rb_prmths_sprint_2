class StudentGroup
    
    def initialize(id, name)
        @id = id
        @name = name
        @students = {}
    end

    def is_student_present?(student)
        @students.key?(student.id)
    end

    def add_student(student)
        raise "NOPE that ID ain't vacant" if is_student_present?(student)
        @students[student.id] = [student.first_name, student.last_name, student.birth_date] 
    end

    def show_students
        puts "Wierd Scholarship: our People"
        @students.each { |key, value| puts "Student, ID: #{key}, #{value[0]} #{value[1]}, born #{value[2]}" }
    end
    
end