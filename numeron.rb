# ## ゲームの流れ

# - ~~コンピューターの手をランダムに決める！~~
# - ~~プレイヤーが数字を入力する！~~
# - ジャッジしていく
# - ジャッジ回数をカウントする

class Enemy
  attr_accessor :hand
  def initialize
    @hand = HandGenerator.generate
  end

  def view_hand
    @hand
  end

  def judge(predict)
    # 桁と数字が合っていると1EAT
    # 桁が異なるが、数字が合っていると1BITE
    # @hand[0] predict[0]: EATは判定できるけどBITEが判定しづらい…
    # BITE判定してから、位置が合っているものをEAT判定に変える
    included = @hand.filter do |number|
      predict.include?(number)
    end
    bite_count = included.count
    eat_count = 0
    3.times do |number|
      eat_count += 1  if @hand[number] == predict[number]
    end
    [eat_count, bite_count]
  end
end

# ランダムな3桁の数字を生成するクラス
class HandGenerator
  def self.generate
    (0..9).to_a.shuffle.slice(0..2)
  end
end

enemy = Enemy.new
p enemy.view_hand

call_input = gets.chomp.chars.map(&:to_i)
p enemy.judge(call_input)
