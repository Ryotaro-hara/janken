puts "じゃんけん..."
def janken
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
  player_hand = gets.to_i
  program_hand = rand(3)
  
  jankens = ["グー", "チョキ", "パー"]
  
  
  if player_hand == program_hand
    puts "ポイ！"
    puts "--------------------"
    puts "あなた:#{jankens[player_hand]}を出しました"
    puts "相手:#{jankens[program_hand]}を出しました"
    puts "--------------------"
    puts "あいこで.."
    return  true
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "ポイ！"
    puts "--------------------"
    puts "あなた:#{jankens[player_hand]}を出しました"
    puts "相手:#{jankens[program_hand]}を出しました"
    puts "--------------------"
    puts "あっちむいて〜" 
    puts "0(上)1(下)2(左)3(右)"
    
    @player_direction = gets.to_i
    @program_direction = rand(4)
    
    directions = ["上", "下", "左", "右"]
    puts "ほい！"
    puts "--------------------"
    puts "あなた:#{directions[@player_direction]}"
    puts "相手:#{directions[@program_direction]}"
    puts "--------------------"
    if @player_direction == @program_direction
      puts "やったね！あなたの勝ちです！"
      return  false
    else
      puts "じゃんけん..."
      return true
    end
  elsif player_hand == 3
    puts "--------------------"
    puts "戦わないが選択されました"
    puts "じゃんけんを終了します"
    puts "--------------------"
    return false
  else
    puts "ポイ！"
    puts "--------------------"
    puts "あなた:#{jankens[player_hand]}を出しました"
    puts "相手:#{jankens[program_hand]}を出しました"
    puts "--------------------"
    puts "あっちむいて〜" 
    puts "0(上)1(下)2(左)3(右)"
    
    @player_direction = gets.to_i
    @program_direction = rand(4)
    
    directions = ["上", "下", "左", "右"]
    puts "ほい！"
    puts "--------------------"
    puts "あなた:#{directions[@player_direction]}"
    puts "相手:#{directions[@program_direction]}"
    puts "--------------------"
    if @player_direction == @program_direction
      puts "残念、、あなたの負けです。"
      return false
    else
      puts "じゃんけん..."
      return  true
    end
  end
end

next_game = true

while next_game do
  next_game = janken  
end


