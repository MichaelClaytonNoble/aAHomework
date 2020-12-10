class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize

    @sequence_length = 1
    @seq = []
    @game_over = false
  end

  def play

    until @game_over 
      take_turn
    end

    game_over_message
    reset_game
  end

  def take_turn

    show_sequence
    require_sequence
    round_success_message
    
    @sequence_length += 1
  end

  def show_sequence
    add_random_color
  end
# The goal of require_sequence is to prompt the user to 
# repeat back the new sequence that was just shown to them, 
# one color at a time. If they give an incorrect color, it 
# should immediately set @game_over to be true.
  def require_sequence
    
    puts "Repeat the sequence back : "

    quess_sequence = []

    i = 0
    while i < @seq.seq
        input = gets.chomp
        guess_sequence << input

      i+=1
    end
    return 
  end

  def add_random_color

    color = COLORS.sample
    puts color
    sleep(2)
    system("clear")
      @seq << color
  end

  def round_success_message

  end

  def game_over_message
    puts "YOU Got IT!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
