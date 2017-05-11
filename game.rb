require './question'


class Game

  def initialize
    @new_question = Question.new
  end

  def display_question
    puts @new_question.create_question
  end

  def check_answer(user_answer)
    user_answer.to_i == @new_question.answer
  end

  def remaining_lives(players)
    puts "#{players[0].name} has #{players[0].lives} lives remaining, #{players[1].name} has #{players[1].lives} lives remaining\n"
  end

  def game_loop(players, new_game)
    players.cycle { |player|
      new_game.display_question
      puts "#{player.name}, your answer please..."
      user_answer = gets.chomp
      if new_game.check_answer(user_answer)
        puts "That is correct! Great job!"
      else
        puts "Ummmmm.......no, that is wrong\n"
        player.lose_life
        if player.lives == 0
          return player.name
        end
        remaining_lives(players)
      end
    }
  end


end