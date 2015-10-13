using TinySegmenter
using Base.Test

@test tokenize("私の名前は中野です") == ["私", "の", "名前", "は", "中野", "です"]
@test tokenize("") == []
