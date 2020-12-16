# code here!
require "pry"

class School
    attr_accessor :roster
    def initialize(school)
        @school = school
        @roster = {}
    end
    def school
        @school
    end
    def add_student(student_name, grade)
        if roster[grade]
            roster[grade] << student_name
        else 
            roster[grade] = []
            roster[grade] << student_name
        end
    end
    def grade(num)
        roster[num]
    end
    def sort
        new_hash = {}
        roster.sort.map do |grade, student|
            new_hash[grade] = student.sort
        end
        new_hash
    end
end