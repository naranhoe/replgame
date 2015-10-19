module RpsMod
  
  def self.rock_paper_scissor
    again = "y"

    while again == "y"
      puts "Best of how many games?"
      best_of = gets.chomp.to_i

      prompt = "Type rock, paper, or scissors for your choice"

      choices = ["rock", "paper", "scissors"]

      my_points = 0
      ai_points = 0
      games_to_win = (best_of / 2) + 1
      puts "So we're playing first to #{games_to_win}? Sounds good!"

      until (my_points == games_to_win) || (ai_points == games_to_win)
          puts prompt
          my_choice = gets.chomp
          puts "Your opponent chose " + ai_choice = choices.sample
        case my_choice
          when "paper"
            if ai_choice == "rock"
              my_points += 1
              puts "You won this round!"
            elsif ai_choice == "paper"
              puts "You tied this round!"
            elsif ai_choice == "scissors"
              puts "You lost this round!"
              ai_points += 1
            end
          when "rock"
            if ai_choice == "scissors"
              my_points += 1
              puts "You won this round!"
            elsif ai_choice == "rock"
              puts "You tied this round!"
            elsif ai_choice == "paper"
              puts "You lost this round!"
              ai_points += 1
            end
          when "scissors"
            if ai_choice == "paper"
              my_points += 1
              puts "You won this round!"
            elsif ai_choice == "scissors"
              puts "You tied this round!"
            elsif ai_choice == "rock"
              puts "You lost this round!"
              ai_points += 1
            end
          else
            puts "and you did not choose a valid option,\n
            therefore nobody wins...."
        end
        puts "Me: #{my_points}"
        puts "Opponent: #{ai_points}"
        puts
      end

      if my_points > ai_points
        puts "YOU BEAT THE COMPUTER!"
      else
        puts "YOU LOST TO THE COMPUTER!"
      end
      puts "Would you like to play again (y/n)?"
      again = gets.chomp
    end
  end
end
