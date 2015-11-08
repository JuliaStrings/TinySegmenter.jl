# coding: utf-8
#
# Usage: python3 benchmark.py
#
# `pip install -r requirements.txt` is required.
from __future__ import unicode_literals
import io
import sys

if sys.version_info[0] > 2:
    xrange = range

from tinysegmenter import tokenize
from benchmarker import Benchmarker


loop = 100
tokenize('ウォームアップするぞ')

with io.open('timemachineu8j.txt', encoding='utf-8') as f:
    text = f.read()

with Benchmarker(loop, width=20) as bench:
    @bench("tokenize")
    def _(bm):
        for _ in bm:
            tokenize(text)
