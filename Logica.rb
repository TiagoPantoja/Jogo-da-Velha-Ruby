require_relative "./Tabuleiro"
require_relative "./Jogador"

class Logica

  POSITION = %w[1 2 3 4 5 6 7 8 9]
  
  def start(x_player, o_player, board)
   print "Quer jogar primeiro? <S/N>: "
    ans = gets.chomp

    if %w[N n].include?(ans)
      current_player = o_player
    else
      current_player = x_player
    end

    (1..9).each do
      if current_player == x_player
        play(current_player, board)
        current_player = o_player
      else
        play(current_player, board)
        current_player = x_player
      end
    end

  end

  def stop
    puts "\n************* O jogo empatou ****************\n\n"
  end

  def play(current_player, board)
    if current_player.mark == "X"
      flag = true

      while flag do
        puts ""
        print "Qual seu movimento? <1-9>: "
        position = gets.chomp

        if !POSITION.include?(position)
          puts "\nEscolha um número entre 1 e 9\n"
          flag = true
        elsif %w[X O].include?board.positions_with_values[position]
          puts "\nEscolha outro número\n"
          flag = true
        else
          flag = false
        end
      end

      current_player.move(board, position, self)
    else
      current_player.best_move(board, self)
    end
  end

  def check_winner(board)
    x_count = 0
    o_count = 0
    Board::WINNING_PLACES.each do |winning_place|
      winning_place.each do |index|
        if board.positions_with_values["#{index}"] == "X"
          x_count = x_count + 1
        elsif board.positions_with_values["#{index}"] == "O"
          o_count = o_count + 1
        end
      end
      if x_count == 3 or o_count == 3
        break
      else
        x_count = 0
        o_count = 0
      end
    end
    if x_count == 3
      return "X venceu"
    elsif o_count == 3
      return "O venceu"
    end
    return "Deu velha"
  end

  def display_winner(mark)
    puts "\n*************| Resultado |*************"
    if mark == "X"
      puts "Você venceu o jogo, parabéns!\n\n"
    else
      puts "Você perdeu o jogo\n\n"
    end
    exit
  end

end

engine = Engine.new
engine.display_info

x_player = Player.new("X")
o_player = Player.new("O")
board    = Board.new
board.display_positions

engine.start(x_player, o_player, board)