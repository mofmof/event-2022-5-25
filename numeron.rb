# ## ゲームの流れ

# - コンピューターの手をランダムに決める！
# - プレイヤーが数字を入力する！
# - ジャッジしていく
# - ジャッジ回数をカウントする

class Enemy
  def initialize
    
  end
end

# ランダムな3桁の数字を生成するクラス
class HandGenerator
  def self.generate
    # 数字はみっつ 配列？
    # 0~9の数字がある
    # 重複なし
    (0..9).to_a
  end
end

puts HandGenerator.generate