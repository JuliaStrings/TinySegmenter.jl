# TinySegmenter

[![Build Status](https://travis-ci.org/JuliaStrings/TinySegmenter.jl.svg?branch=master)](https://travis-ci.org/JuliaStrings/TinySegmenter.jl)

TinySegmenter.jl is a Julia version of [TinySegmenter](http://chasen.org/~taku/software/TinySegmenter/), which is an extremely compact Japanese tokenizer
originally written in JavaScript by Mr. Taku Kudo.

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

The following are times in seconds for a benchmark (see [benchmark/README.md](benchmark/README.md)) of TinySegmenter
implementations in different languages tokenizing a large (243kB) Japanese text:

|Ruby | C++ | Perl | JavaScript(Node.js) | Go | Python | Julia |
|---|---|---|---|---|---|---|---|
|132.98 | 48 | 134 |105.31 | 10.50 | 111.85 | 11.70 |

The benchmark was performed on the following machine:

- Intel Core i5-3210M CPU at 2.50GHz
- 8GB RAM (1600MHz DDR3)
- MacBook Pro (Retina, 13-inch, Late 2012), MacOS 10.11 ("El Capitan")

The [benchmark text](http://www.genpaku.org/timemachine/timemachineu8j.txt) was [The Time Machine](https://en.wikipedia.org/wiki/The_Time_Machine) by H.G. Wells, translated to Japanese by Hiroo Yamagata under the CC BY-SA 2.0 License.   We also use the same text for validation (in the `test` directory).
