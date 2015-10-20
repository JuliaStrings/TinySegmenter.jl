#!/bin/sh

echo 'Node.js'
node --version
node benchmark.js
echo 'Python2:'
python --version
python tinysegmenter.py
#echo 'Python3:'
#pyenv local 3.5.0
#python --version
#python tinysegmenter3.py
echo 'Julia:'
julia --version
julia benchmark.jl

echo 'Ruby: too slow so reduce repeat time from 100 to 5'
ruby --version
ruby benchmark.rb
