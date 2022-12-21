require './person_class'
class Student < Person
  attr_accessor :classroom
  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
  def add_classroom(classroom)
    @classroom = classroom
    @classroom.students.push(self) unless classroom.include?(self)
  end
end
