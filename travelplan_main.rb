require "./methods.rb"

# 旅行プランデータ
plans = [
 {place: "沖縄", price: 10000},
 {place: "北海道", price: 20000},
 {place: "九州", price: 15000}
]

disp_plan(plans)
chosen_plan = choose_plan(plans)
num_guest = decide_num(chosen_plan)
calculate_charges(chosen_plan, num_guest)
