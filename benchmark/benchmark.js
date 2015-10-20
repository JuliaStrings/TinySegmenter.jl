var fs = require('fs');
var contents = fs.readFileSync('./timemachineu8j.txt');
var texts = contents.toString();
var TinySegmenter = require('./tiny_segmenter-0.2');
var segmenter = new TinySegmenter();

var i = 0;
var start = Date.now();
for (i = 0; i < 100; i++) {
  segmenter.segment(texts);
}
var end = Date.now();
console.log((end - start)/1000 + "sec");
