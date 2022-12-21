class Classroom
  attr_accessor :label, :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(Student) unless @students.include?(Student)
    student.classroom = self
  end
end
