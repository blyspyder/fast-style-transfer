#！/bin/bash
python evaluate.py --checkpoint models/wave.ckpt \
--in-path examples/in/ynuming.jpg \
--out-path examples/out/wave_ynuming.jpg \
&& gwenview examples/out/wave_ynuming.jpg
