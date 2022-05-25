# ## ゲームの流れ

# - コンピューターの手をランダムに決める！
# - プレイヤーが数字を入力する！
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
end

# ランダムな3桁の数字を生成するクラス
class HandGenerator
  def self.generate
    # 数字はみっつ 配列？
    # 0~9の数字がある
    # 重複なし
    (0..9).to_a.shuffle.slice(0..2)
  end
end

e = Enemy.new
puts e.view_hand
puts e.view_hand

