# code here!
require 'pry'
class School
     
     attr_reader :name, :roster
    def initialize(name)
        @name = name
        @roster = Hash.new

        # binding.pry
        end

         def add_student(student_name, grade) 
            if @roster.has_key?(grade)
                @roster[grade] << student_name
            else 
                @roster[grade] = [student_name]
            end
            
            # self.add_student = (student_name, grade)
            
         end

         def grade(grade)
            self.roster[grade]
         end  
         def sort
            self.roster.each do |grade, students|
               students.sort!
            end
        end
    end