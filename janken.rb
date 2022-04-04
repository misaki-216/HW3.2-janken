
require 'securerandom'

def battle
  puts "1(グー), 2(チョキ), 3(パー), 4(終了する)"
  
  myjanken_choice = ["グー", "チョキ", "パー", "終了する"]
  myjanken_type = gets.to_i
  myjanken_type -= 1
  
  cpjanken_choice = ["グー", "チョキ", "パー"]
  cpjanken_type = rand(3)


  if myjanken_type == 3
    puts "ゲームを終了しました"
    exit
    return false
  elsif myjanken_type < 3
    puts "ホイ！"
    puts "----------"
    puts "あなた：#{myjanken_choice[myjanken_type]}を出しました"
    puts "相手：#{cpjanken_choice[cpjanken_type]}を出しました"
    
  else
    puts "無効な入力です"
    return true
  end
  
  puts "----------"
  
  jankenjudge = cpjanken_type - myjanken_type
  hoi_choice = ["上", "下", "右", "左"]
  
  case jankenjudge
  when 0
    puts "あいこです！"
    return true
  #ジャンケンに勝った場合
  when 1,-2
    puts "じゃんけんに勝った！"
    puts "あっち向いて・・・"
    puts "1(上), 2(下), 3(右), 4(左)"
    myhoi_type = gets.to_i
    myhoi_type -= 1
    myhoi_choice = hoi_choice[myhoi_type]
    cphoi_choice = hoi_choice[rand(4)]
    puts "ホイ！"
    puts "----------"
    puts "あなた：#{myhoi_choice}を指しました"
    puts "相手：#{cphoi_choice}を向きました"
    
    if myhoi_choice == cphoi_choice
      puts "----------"
      puts "ゲームに勝ちました！"
      return false
    else
      return true
    end
  #ジャンケンに負けた場合
  when -1,2
    puts "じゃんけんに負けた！"
    puts "あっち向いて・・・"
    puts "1(上), 2(下), 3(右), 4(左)"
    myhoi_type = gets.to_i
    myhoi_type -= 1
    myhoi_choice = hoi_choice[myhoi_type]
    cphoi_choice = hoi_choice[rand(4)]
    puts "ホイ！"
    puts "----------"
    puts "あなた：#{myhoi_choice}を向きました"
    puts "相手：#{cphoi_choice}を指しました"
    
    if myhoi_choice == cphoi_choice
      puts "----------"
      puts "ゲームに負けました！"
      return false
    else
      return true
    end
  
  else 
    puts "無効な入力です"
    return true
  end
end

next_game = true 
start = "じゃんけん・・・"

while next_game do
  puts "----------"
  puts start
  next_game = battle
end






