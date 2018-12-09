class School

    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(student_name, grade)
        roster[grade]  ||= []
        roster[grade] << student_name 
    end

    def grade(student_grade)
        roster[student_grade]
    end 

    def sorted 
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sorted
        end
    end


end 