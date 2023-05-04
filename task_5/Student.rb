class Student
    attr_reader :id, :first_name, :last_name, :birth_date
    def initialize(id, first_name, last_name, birth_date)
        @id = id
        @first_name = first_name
        @last_name = last_name
        @birth_date = birth_date
    end

    def to_s
        "Student, ID: #{id}, #{first_name} #{last_name}, born #{birth_date}"
    end
end