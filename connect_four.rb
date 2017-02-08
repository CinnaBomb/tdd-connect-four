class ConnectFour

	attr_accessor :player, :board_array

	def initialize
		@player = 1
		@board_array = Array.new(7) {Array.new(6, " ")}
	end

	def board_visual(board_array)
		b = board_array
		str = %Q(
		[#{b[0][5]}][#{b[1][5]}][#{b[2][5]}][#{b[3][5]}][#{b[4][5]}][#{b[5][5]}][#{b[6][5]}]
		[#{b[0][4]}][#{b[1][4]}][#{b[2][4]}][#{b[3][4]}][#{b[4][4]}][#{b[5][4]}][#{b[6][4]}]
		[#{b[0][3]}][#{b[1][3]}][#{b[2][3]}][#{b[3][3]}][#{b[4][3]}][#{b[5][3]}][#{b[6][3]}]
		[#{b[0][2]}][#{b[1][2]}][#{b[2][2]}][#{b[3][2]}][#{b[4][2]}][#{b[5][2]}][#{b[6][2]}]
		[#{b[0][1]}][#{b[1][1]}][#{b[2][1]}][#{b[3][1]}][#{b[4][1]}][#{b[5][1]}][#{b[6][1]}]
		[#{b[0][0]}][#{b[1][0]}][#{b[2][0]}][#{b[3][0]}][#{b[4][0]}][#{b[5][0]}][#{b[6][0]}]
		)
		return str
	end

	def update_board_array(player, column)
		board_array=@board_array
		token = token(player)
		i = board_array[column].index(" ")
		board_array[column][i]=token
		return board_array
	end

	def token(player)
		#outlined circle
		return "\u26AA" if player == 1
		#filled-in circle
		return "\u26AB" if player == 2

	end

	def valid_column?(column)
		return false if column == nil
		column = column-1
		return true if (0..6).member?(column) && @board_array[column].include?(" ")
		false
	end

	def column_choice(player, column=nil)
		puts "Player #{player}'s Turn!"
		until valid_column?(column) do
			puts "Which column (1-7) do you choose?"
			column = gets.chomp.to_i
		end
		column
	end

	def vert_win?(board_array)


		board_array.each do |row|
			p1_count = 0
			p2_count = 0
			row.each do |spot|
				if spot == "⚪"
					p1_count += 1
					p2_count = 0

				elsif  spot == "⚫"
					p2_count += 1
					p1_count = 0
				end
				return true if p1_count == 4 || p2_count ==4
			end
		end
		false

	end

	def horiz_win?(board_array)
		b = board_array
		for i in (0..5)
			p1_count = 0
			p2_count = 0
			for j in (0...board_array.length)
				#puts b[j][i]
				if b[j][i] == "⚪"
					p1_count += 1
					p2_count = 0
				elsif  b[j][i] == "⚫"
					p2_count += 1
					p1_count = 0
				end
				#puts "p1count: #{p1_count}"
				#puts "p2count: #{p2_count}"
				return true if p1_count == 4 || p2_count ==4
			end
		end
		false
	end



	def diag_win?(board_array)
		return true
		false
	end

	def game_won?(board_array)
		b = board_array
		return true if horiz_win?(b) || vert_win?(b) || diag_win?(b)
		false
	end


	def draw?(board_array)
		return false if game_won?
		@board_array.each do |column|
			return false if column.any?(" ")
		end
		true
	end


end
#
#c = ConnectFour.new
#c.board_array = Array.new(7) {Array.new(6, "⚪")}
#puts c.board_array.inspect

