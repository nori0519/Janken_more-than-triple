

puts "ジャンケンを開始します。"
count_rock = 0
count_scissors =0
count_paper =0

count_r_w =0
count_s_w =0
count_p_w =0
count_draw =0

#b_num =0

#puts "対戦する人数を教えてください。"
#num = gets.to_i
puts("3人、４人、10人、100人の対戦結果を出力します。")
num =[3,4,10,100]

for s in 0..3 do

k =num[s]

for i in 0..99 do
    player = Array.new(i)
	for j in 1..k do
	    player[i]=Array.new(j)
		player[i][j] = rand(0..999)%3
		if player[i][j]==0
			count_rock+=1
		elsif player[i][j]==1
			count_scissors+=1
		else
			count_paper+=1
		end

        #puts "#{player[i][j]}"

		if j==k
			#b_num+=1
			#puts("b_num#{b_num}")
			if count_rock==k
				count_draw+=1
			elsif count_scissors==k
				count_draw+=1
			elsif count_paper==k
				count_draw+=1
			elsif count_rock==0
				count_s_w+=1
			elsif count_scissors==0
				count_p_w+=1
			elsif count_paper==0
				count_r_w+=1
			else
				count_draw+=1
			end

	        #puts("rock:#{count_rock}")
	        #puts("scissors:#{count_scissors}")
	        #puts("paper:#{count_paper}")
	        #puts("")

	        #puts("引き分け:#{count_draw}")
	        #puts("グー:#{count_r_w}")
	        #puts("チョキ:#{count_s_w}")
	        #puts("パー:#{count_p_w}")
	        #puts("_____________________")

			count_rock =0
			count_scissors =0
			count_paper =0
	    end

	    #puts("player#{j}:#{player[i][j]}")
	    #puts("V.S.")
	    #puts("j:#{j}")
	    #puts("")
	end
	
	#puts("i:#{i}")
	#puts("___________________________________________________")
end

#puts("test")

puts("#{j}人|　グー|　チョキ|　パー|　引き分け")
puts("勝数　#{count_r_w}回| #{count_s_w}回| #{count_p_w}回| #{count_draw}回")
puts("________________________________________________________________________")

count_r_w =0
count_s_w =0
count_p_w =0
count_draw =0

#puts("k:#{k}")

end
