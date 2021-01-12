# code here!

class School
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
        
    end

    def add_student(studentname, grade)
        if roster[grade]
            roster[grade] << studentname 
        else 
            roster[grade] = []
            roster[grade] << studentname
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.map{|grade,studentname|[grade,studentname.sort]}.sort.to_h
        #as found on slack
    end


end