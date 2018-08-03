module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class School
  def initialize
    @students = {}
  end

  def students(grade)
    @students[grade] = [] if @students[grade].nil?
    @students[grade]
  end

  def add(name, grade)
    @students[grade] ? @students[grade].push(name).sort! : @students[grade] = [name]
  end

  def students_by_grade
    student_list = @students.keys.map do |key|
      { grade: key, students: @students[key] }
    end

    student_list.sort_by { |hash| hash[:grade] }
  end
end
