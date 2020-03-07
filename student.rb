class Student  
  attr_accessor :first_term_home_work, :first_term_test, :first_term_paper,:second_term_home_work, :second_term_test, :second_term_paper

  def initialize(first_term_home_work, first_term_test, first_term_paper, second_term_home_work, second_term_test, second_term_paper)
    @first_term_home_work = first_term_home_work
    @first_term_test = first_term_test
    @first_term_paper = first_term_paper
    @second_term_paper = second_term_paper
    @second_term_test = second_term_test
    @second_term_home_work = second_term_home_work
  end

  def first_term_grade
    average(@first_term_home_work, @first_term_test, @first_term_paper)
  end

 
  def second_term_grade
    average(@second_term_home_work, @second_term_test, @second_term_paper)
  end

  def average(*scores)
    scores.each.reduce(:+)/scores.length
  end
 

end

student = Student.new(123,12,34,222,11,13)
p student.first_term_grade