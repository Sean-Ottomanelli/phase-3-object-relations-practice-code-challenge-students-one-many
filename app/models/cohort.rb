class Cohort < ActiveRecord::Base
  has_many :students

  def add_student(name, age)
    student = Student.create(name: name, age: age, cohort_id: self.id)
    return "#{student} has been appended to the DB"
  end

  def average_age
    Student.all.map do |student_inst|
        student_inst.age
    end.sum.to_f / Student.all.size
  end

  def total_students
    return self.students.length
  end

  def self.biggest
    Cohort.all.max_by {|instance| instance.students.length}
  end

  def self.sort_by_mod
    Cohort.all.sort_by {|instance| instance.current_mod}
  end

        


    
end