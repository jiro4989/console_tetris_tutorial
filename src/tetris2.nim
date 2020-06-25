from os import sleep

import illwill

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

proc color(n: int): BackgroundColor =
  case n
  of 0: bgBlack
  of 1: bgWhite
  else: bgBlack

proc drawBoard(tb: var TerminalBuffer, board: Board) =
  for y, row in board:
    # 行を描画
    for x, cell in row:
      let c = cell.color()
      tb.setBackgroundColor(c)
      tb.write(x*2, y, "  ")
      tb.resetAttributes()

proc exitProc() {.noconv.} =
  ## 終了処理
  illwillDeinit()
  showCursor()

# illwillの初期化
illwillInit(fullscreen=true)

# Ctrl-Cでプログラムが中断したときにプロシージャを呼ぶ
setControlCHook(exitProc)

# カーソルを非表示
hideCursor()

# 画面描画用のバッファ
var tb = newTerminalBuffer(terminalWidth(), terminalHeight())

while true:
  tb.drawBoard(initialBoard)
  tb.display()
  sleep 1000 # ミリ秒
