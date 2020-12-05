# プランを表示する
def disp_plan(plans)
  puts "旅行プランを選択してください。"
  puts ""
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行 (#{plan[:price]}円)"
  end
end
# プランを選択する
def choose_plan(plans)
  while true
    puts ""
    print "プランの番号を選択 > "
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)
    puts ""
    puts "1~3の番号を入力してください。"
  end
  plans[select_plan_num -1]
end

# 参加人数を決定する
def decide_num(chosen_plan)
  puts ""
  puts "#{chosen_plan[:place]}旅行ですね。何名で予約されますか？"
  puts ""
  while true
    print "人数を入力 > "
    num_guest = gets.to_i
    puts ""
    break if num_guest >= 1
    puts "1名以上を選んでください。"
    puts ""
  end
  num_guest
end

# 合計金額を計算する
def calculate_charges(chosen_plan, num_guest)
  total_price = chosen_plan[:price] * num_guest
  if num_guest >= 5
    puts "5名以上なので10%割引となります。"
    total_price *= 0.9
  end
    puts "合計金額は#{total_price.floor}円です。"
    puts "ご予約ありがとうございました。"
end
