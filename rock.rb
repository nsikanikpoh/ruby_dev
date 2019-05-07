options = ["rock", "scissors", "paper"]

while true

    print <<TEXT
1 - rock
2 - scissors
3 - paper
9 - end game
TEXT

    val = gets.to_i

    r = rand(3) + 1

    if val == 9 
        puts "End"
        exit
    end

    if ![1, 2, 3, 9].include?(val)
        puts "Invalid option"
        redo
    end

    computer = options[r-1]
    human = options[val-1]

    puts "I have #{computer}, you have #{human}"

    if val == r
        puts "Tie, next throw"
        redo
    end


    if val == 1 and r == 2
        puts "Rock blunts scissors, you win"

    elsif val == 2 and r == 1
        puts "Rock blunts scissors, you loose"

    elsif val == 2 and r == 3
        puts "Scissors cut paper, you win"

    elsif val == 3 and r == 2
        puts "Scissors cut paper, you loose"

    elsif val == 3 and r == 1
        puts "Paper covers rock, you win"

    elsif val == 1 and r == 3
        puts "Paper covers rock, you loose"

    end    
end