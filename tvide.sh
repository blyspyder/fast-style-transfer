#！/bin/bash
python transform_video.py \
--in-path examples/in/fox.mp4 \
--checkpoint models/ink.ckpt  \
--out-path examples/out/inkfox.mp4 \
--device /gpu:0 --batch-size 4 \
&& /usr/bin/vlc --started-from-file examples/out/inkfox.mp4

 
