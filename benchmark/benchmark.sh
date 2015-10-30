#!/bin/sh

echo 'Node.js:'
node --version
node benchmark.js
echo 'Python2:'
pyenv local system
python --version
python benchmark.py -n 10
echo 'Python3:'
pyenv local 3.5.0
python --version
python benchmark.py -n 10
echo 'Julia:'
julia --version
julia benchmark.jl

echo 'Ruby:'
bundle exec ruby --version
bundle exec ruby benchmark.rb
