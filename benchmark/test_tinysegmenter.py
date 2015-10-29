# coding: utf-8
from __future__ import unicode_literals

import io
import subprocess

import tinysegmenter
import pytest


def test_ctypes():
    ctype = tinysegmenter._ctype
    assert ctype('一') == 'M'
    assert ctype('〆') == 'H'
    assert ctype('名') == 'H'
    assert ctype('あ') == 'I'
    assert ctype('ア') == 'K'
    assert ctype('Ｚ') == 'A'
    assert ctype('９') == 'N'


def test_tokenize():
    tokenize = tinysegmenter.tokenize
    assert tokenize("私の名前は中野です") == ["私", "の", "名前", "は", "中野", "です"]
    assert tokenize("TinySegmenterは25kBで書かれています。") == ["TinySegmenter", "は", "2", "5", "kB", "で", "書か", "れ", "て", "い", "ます", "。"]
    assert tokenize("") == []


def test_timemachine():
    with io.open('../test/timemachineu8j.txt', encoding='utf-8') as f:
        text = f.read()

    toks = tinysegmenter.tokenize(text)

    with io.open('tokenized.txt', 'w', encoding='utf-8') as f:
        f.write(' | '.join(toks))

    assert 0 == subprocess.call([
            "diff", "-u",
            "../test/timemachineu8j.tokenized.txt",
            "tokenized.txt"])
