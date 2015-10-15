using TinySegmenter
using Base.Test

@test tokenize("私の名前は中野です") == ["私", "の", "名前", "は", "中野", "です"]
@test tokenize("TinySegmenterは25kBで書かれています。")　== ["TinySegmenter", "は", "2", "5", "kB", "で", "書か", "れ", "て", "い", "ます", "。"]
@test tokenize("") == []

import TinySegmenter.ctype
@test ctype('一') == 'M'
@test ctype('〆') == 'H'
@test ctype('名') == 'H'
@test ctype('あ') == 'I'
@test ctype('ア') == 'K'
@test ctype('Ｚ') == 'A'
@test ctype('９') == 'N'
