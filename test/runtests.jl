using TinySegmenter
using Base.Test

@test tokenize("私の名前は中野です") == ["私", "の", "名前", "は", "中野", "です"]
@test tokenize("TinySegmenterは25kBで書かれています。")　== ["TinySegmenter", "は", "2", "5", "kB", "で", "書か", "れ", "て", "い", "ます", "。"]
@test tokenize("") == []
#@test _ctype('一') == 'M'
#@test _ctype('〆') == 'H'
#@test _ctype('名') == 'H'
#@test _ctype('あ') == 'I'
#@test _ctype('ア') == 'K'
#@test _ctype('Ｚ') == 'A'
#@test _ctype('９') == 'N'
