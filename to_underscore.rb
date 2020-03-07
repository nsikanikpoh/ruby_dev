# Better Solution
def to_underscore(string)
  string.to_s.split(/(?=[A-Z])/).join('_').downcase
end
# returns test_controller
p to_underscore('TestController')

# returns movies_and_books
p to_underscore('MoviesAndBooks')

# returns app7_test
p to_underscore('App7Test')

# returns "1"
p to_underscore(1)