make
if [ ! -e text8 ]; then
  wget http://mattmahoney.net/dc/text8.zip -O text8.gz
  gzip -d text8.gz -f
fi
#训练词向量
#vectors.bin输出二进制词嵌入矩阵
#-sampe指的是采样的阈值，如果一个词语在训练样本中出现的频率越大，那么就越会被采样。
#文本（window）大小：skip-gram通常在10附近，CBOW通常在5附近
nohup time ./word2vec -train text8 -output vectors.bin -cbow 1 -size 200 -window 8 -negative 25 -hs 0 -sample 1e-4 -threads 20 -binary 1 -iter 15 &
nohup time ./word2vec -train text8 -output vectors.bin -cbow 1 -size 200 -window 5 -negative 25 -hs 0 -sample 1e-4 -threads 20 -binary 0 -iter 15 &
#距离  输入一个词，输出跟这个词接近的词，以及距离
./distance vectors.bin
#运行测试程序  输入三个词，输出与这三个词最接近的词
./word-analogy vectors.bin