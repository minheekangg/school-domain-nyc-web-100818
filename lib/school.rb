class School
# attr_accessor :student, :grade
# attr_reader :student
#
#   def initialize(school)
#     @school = school
#     # @roster = {}
#   end
#
#   def roster
#     @roster = {}
#     @roster = STUDENTS
#   end
#
#   ALL_STUDENTS_EVERYWHERE = {}
#   def add_student(student, grade)
#     STUDENTS[grade] = []
#     if STUDENTS.has_key?(grade)
#       STUDENTS[grade].push student
#     else
#       STUDENTS[grade] = student
#     end
#   end
#
# end
#
# class School
attr_accessor :school_name
  # attr_writer :name

  # attr_accessor :name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end


  def roster
    @roster
  end



  def add_student(student, grade)
    # @roster[grade] = []
    if @roster.has_key?(grade)
      @roster[grade].push student
    else
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students = students.sort!
    end
  end


end

#
# a = School.new("Greendale High")
# a.roster
