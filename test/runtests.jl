using TinySegmenter
using Base.Test

seg = Segmenter()
@test tokenize(seg, "私の名前は中野です") == ["私", "の", "名前", "は", "中野", "です"]
@test tokenize(seg, "") == []
