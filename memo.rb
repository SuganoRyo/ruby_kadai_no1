require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp

if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  CSV.open("#{file_name}.csv", "w") do |memo|
  p "メモしたい内容を記入してください"
  p "完了したらCtrl + Dをおします"
  text = gets("\x04").chomp("\x04")
  memo << ["#{text}"]
end
else
  puts "修正するファイル名を入力してください"
  file_name = gets.chomp
  CSV.open("#{file_name}.csv", "a") do |memo|
  p "編集内容を入力してください"
  p "完了したらCtrl + Dをおします"
  text = gets("\x04").chomp("\x04")
  memo << ["#{text}"]
end
end