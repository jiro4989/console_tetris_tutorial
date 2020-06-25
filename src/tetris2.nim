from os import sleep
from strutils import join
from sequtils import mapIt

type
  Board* = seq[seq[int]]

const
  initialBoard*: Board = @[
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    @[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    @[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
  ]

while true:
  for row in initialBoard:
    # シーケンスの各要素を文字列に変換してから結合
    echo row.mapIt($it).join
  echo "---"
  sleep 1000 # ミリ秒