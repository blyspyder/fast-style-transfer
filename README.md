### 训练自己的神经网络
使用 `style.py` 训练一个新的神经网络. 在终端运行 `python style.py -h` 查看需要的参数. 训练之前若没有训练集，运行`setup.sh`下载相关数据集。下面是训练模板
    python style.py --style path/to/style/img.jpg \
      --checkpoint-dir checkpoint/path \
      --test path/to/test/img.jpg \
      --test-dir path/to/test/dir \
      --content-weight 1.5e1 \
      --checkpoint-iterations 1000 \
      --batch-size 20

### 图像风格转移
使用 `evaluate.py` 进行图像风格转移. 运行 `python evaluate.py -h` 查看所有可能的参数。用法案例如下
    python evaluate.py --checkpoint path/to/style/model.ckpt \
      --in-path dir/of/test/imgs/ \
      --out-path dir/for/results/

### 视频风格化
使用 `transform_video.py` 风格化一个视频. 运行 `python transform_video.py -h` 查看所有可能需要的参数。用法案例如下
    python transform_video.py --in-path path/to/input/vid.mp4 \
       path/to/style/model.ckpt \
      --out-path out/video.mp4 \
      --device /gpu:0 \
      --batch-size 4
      
###脚本使用
本项目以提前创建好相关脚本，运行前只需要要修改相关脚本内容后运行脚本即可
风格化图片：风格化图片对应脚本为`img.sh`，运行前修改`--checkpoint  ..`后的路径为，你想要的风格对应神经网络路径、`--in-path ..`后的路径改为你想要风格化的图片的路径
`--out-path`后的路径为风格化图片后你想要保存图片的路径

风格化视频：风格化视频对应脚本为`video.sh`,运行前修改`--checkpoint  ..`后的路径为，你想要的风格对应神经网络路径、`--in-path ..`后的路径改为你想要风格化的视频的路径
`--out-path`后的路径为风格化视频后你想要保存图片的路径

###界面使用
本项目使用时也可使用可视化界面，可视化界面包含风格化图像和风格化视频以及风格展示区域
风格化图片：用户只需要点击打开图片并选择相应的图片的，选择想要的风格，最后填写保存后图片的名称，点击转换即可完成选择的图片的风格化转换
风格化视频：只需要选择打开预风格化的视频，选择需要的分割，选择维度，填写保存的视频的名称即可
视频和图片默认的保存位置：/examples/out 文件夹下
