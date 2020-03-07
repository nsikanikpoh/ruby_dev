def dont_give_me_five(start_,end_)
    #your code here
    start_.upto(end_).map{|x| x.to_s}.select{|x| !(x.include? '5') }.count
end

p dont_give_me_five(1,9)
p dont_give_me_five(4,17)