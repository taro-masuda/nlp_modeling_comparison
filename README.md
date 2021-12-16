# nlp_modeling_comparison
- Kaggleでよく使われるNLP特徴量/モデルについて、簡単な文書分類の精度比較実験を行ったコードの置き場。
## 実行環境
- ニューラルネット以外：Dockerfileからビルド
- ニューラルネット系：Google Colaboratory (GPU, ハイメモリ)

## 精度比較結果
### UCI
|手法 |val_acc |test_acc | val_roc_auc(macro, 'ovo') | test_roc_auc(macro, 'ovo') | val_logloss | test_logloss
| ---- | ---- | ---- | ---- | ---- | ---- | ---- |
|LSTM x GloVe |0.8898 | 0.8840 ||| | 
|LSTM x gensim | | ||| | 
|LSTM x fasttext | | ||| | 
|RNN x GloVe || ||| | 
|GRU x GloVe || ||| | 
|BERT(bert-base-uncased) | | | |
|RoBERTa(roberta-base-uncased) | 0.8428 | 0.8533 | | | | 
|LGBM x TFIDF | 0.8787 | 0.8840 | 0.9515 | 0.9548 | 0.3889 | 0.3654
|LGBM x GloVe | 0.7560 | 0.7635 | 0.8353| 0.8543 |0.7070 | 0.6685
|LGBM x gensim |0.4835 | 0.5037 |0.5508 |0.5648 | 1.1765| 1.1567
|LGBM x fasttext | 0.8743| 0.8825 |0.9503 | 0.9528|0.3749 | 0.3366
|LGBM x BERT(embedding) | | | | | |
|XGB x TFIDF | |  | | | | 
|XGB x GloVe | |  | | | | 
|XGB x gensim | |  | | | | 
|XGB x fasttext | |  | | | | 
|CNN x  | |  | 0.5048 | | | 
|Logistic Regression x TFIDF | 0.9139| 0.9304 ||| | 
|SVM | |  | | | | 
|DistilBERT | 0.9102 | 0.8532 | 0.9784| 0.9808| 0.2509 | 0.2663
|Naive Bayes | |  | | | | 
## 今後アップデートしたいこと
- 複数seedで回し、評価指標の中央値同士で比較
- 複数データセットでの比較
- スクリプト化、クラス化
