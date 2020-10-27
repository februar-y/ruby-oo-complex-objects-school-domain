# code here!

class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def name
        @name
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        @name = name
        @grade = grade
        # If the key @roster[@grade] already exist shovel value else
        # create key for grade and the shovel value to it
        if @roster[@grade]
            @roster[@grade] << @name
        else 
            @roster[@grade] = []
            @roster[@grade] << @name
        end
    end

    def grade(grade_num)
        @roster[grade_num]
    end

    def sort
        @roster = @roster.sort.to_h
        @roster.each do |key, value|
            @roster[key] = value.sort
        end
        @roster
    end

end