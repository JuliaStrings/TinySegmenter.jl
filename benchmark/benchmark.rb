require 'tiny_segmenter'
require 'benchmark'

text = ''
File.open('timemachineu8j.txt') do |f|
  text = f.read
end
ts = TinySegmenter.new

num = 100

Benchmark.bm 10 do |r|
  r.report "segment" do
    100.times do
      ts.segment(text)
    end
  end
end
