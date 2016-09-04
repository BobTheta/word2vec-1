# word2vec
word2vec工具的C语言版本
* 这是word2vec工具包


* 官方介绍信息如下

  ## Tools for computing distributed representtion of words

  We provide an implementation of the Continuous Bag-of-Words (CBOW) and the Skip-gram model (SG), as well as several demo scripts.

  Given a text corpus, the word2vec tool learns a vector for every word in the vocabulary using the Continuous
  Bag-of-Words or the Skip-Gram neural network architectures. The user should to specify the following

  - desired vector dimensionality
  - the size of the context window for either the Skip-Gram or the Continuous Bag-of-Words model
  - training algorithm hierarchical softmax and  or negative sampling
  - threshold for downsampling the frequent words 
  - number of threads to use
  - the format of the output word vector file (text or binary)

  Usually, the other hyper-parameters such as the learning rate do not need to be tuned for different training sets. 

  The script demo-word.sh downloads a small (100MB) text corpus from the web, and trains a small word vector model. After the training
  is finished, the user can interactively explore the similarity of the words.

  More information about the scripts is provided at httpscode.google.compword2vec

* word2vec原理以及使用方法

  [word2vec博客](https://hehuihui1994.github.io/hehuihui1994.github.io/2016/09/03/word2vec/)

