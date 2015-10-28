# TinySegmenter

[![Build Status](https://travis-ci.org/chezou/TinySegmenter.jl.svg?branch=master)](https://travis-ci.org/chezou/TinySegmenter.jl)

TinySegmenter.jl is a Julia version of [TinySegmenter](http://chasen.org/~taku/software/TinySegmenter/), which is an extremely compact Japanese tokenizer
originaly written in JavaScript by Mr. Taku Kudo.

## Usage

```jl
using TinySegmenter

join(tokenize("私の名前は中野です"), " | ")
# "私 | の | 名前 | は | 中野 | です"
```

The return value of `tokenize` is an array of substrings of the string input,
giving the locations of the tokens in the text.  (Substrings are represented
by the `SubString` Julia type.)

## Benchmarks

JavaScript (Node.js) | Python2 | Python3 | Julia | Ruby
---| ---|---|---|---
9.29 | 85.34 | 18.87 | 1.31 | 16.76

### Environments

- Intel(R) Core(TM) i5-3210M CPU @ 2.50GHz
- 8 GB 1600 MHz DDR3
- MacBook Pro (Retina, 13-inch, Late 2012) El Capitan

### Text
[The Time Machine](https://en.wikipedia.org/wiki/The_Time_Machine) written by H.G. Wells translated by Hiroo Yamagata.
The following texts are under CC BY-SA 2.0 License.

./test/timemachineu8j.txt
./test/timemachineu8j.tokenized.txt (tokenized version of original text)

See also:

http://cruel.org/books/timemachine/timemachinej.html
http://www.genpaku.org/timemachine/timemachineu8j.txt


