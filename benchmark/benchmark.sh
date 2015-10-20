#!/bin/sh

node --version
node benchmark.js
python --version
python tinysegmenter.py
#pyenv local 3.5.0
#python --version
#python tinysegmenter3.py
julia --version
julia benchmark.jl
ruby --version
ruby benchmark.rb
