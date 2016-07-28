using TinySegmenter
using Base.Test

@test tokenize("私の名前は中野です") == ["私", "の", "名前", "は", "中野", "です"]
@test tokenize("TinySegmenterは25kBで書かれています。")　== ["TinySegmenter", "は", "2", "5", "kB", "で", "書か", "れ", "て", "い", "ます", "。"]
@test tokenize("") == []

f = open("timemachineu8j.txt");
s = join(readlines(f));
result_text = join(TinySegmenter.tokenize(s), " | ");
f2 = open("timemachineu8j.tokenized.txt")
js_result_text = join(readlines(f2));
@test result_text == js_result_text

import TinySegmenter.ctype
@test ctype('一') == UInt8('M')
@test ctype('〆') == UInt8('H')
@test ctype('名') == UInt8('H')
@test ctype('あ') == UInt8('I')
@test ctype('ア') == UInt8('K')
@test ctype('Ｚ') == UInt8('A')
@test ctype('９') == UInt8('N')
