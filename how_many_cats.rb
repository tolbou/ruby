# ARGV[i]で引数の経過年数を取得できます。
# 実行サンプル


def howmanyCats (years)
    # 子猫
    kitten = 1
    # 猫
    cat = 0
    #進化寸前子猫
    before_cats = 0
  
    year = years.to_i
    for i in 0...year do
      # 子猫から猫に進化
      if year >= 2
        cat += before_cats
        before_cats = 0
      end
      # 子猫から進化寸前子猫に進化
      before_cats += kitten
      # 子猫をリセット
      kitten = 0
      # 新たな子猫の誕生
      kitten += cat
  
    end
    {cat: cat, kitten: kitten + before_cats}
  end
  
  puts howmanyCats(ARGV[0])
  