#!/bin/sh
python style.py --style examples/style/qibaishi.jpg \
--checkpoint-dir models/ \
--content-weight 1.5e1 \
--checkpoint-iterations 20 \
--batch-size 2


