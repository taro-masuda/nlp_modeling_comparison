# nlp_modeling_comparison
- This repository shows some modeling examples about Natural Language Processing (NLP). All models and features are popularly used in Kaggle competition notebooks. You can compare multiple methods by a naive text classification experiment.
- Reference (blog URL in Japanese) : https://taro-masuda.hatenablog.com/entry/2021/12/19/020220
## Enviroments
- w/o neural nets: built from Dockerfile
- w/ neural nets: Google Colaboratory (GPU/TPU with high memory)

## Experiment Results
### UCI Machine Learning Repository: News Aggregator Data Set
|method |val_acc |test_acc | val_roc_auc<br>(macro, 'ovo') | test_roc_auc<br>(macro, 'ovo') | val_logloss | test_logloss
| ---- | ---- | ---- | ---- | ---- | ---- | ---- |
|LSTM x GloVe |0.9199 |0.9237 |0.9818|0.9850| 0.2664| 0.2202
|LSTM x w2v(googlenews) |0.9064|0.9251|0.9812|0.9849|0.2655|0.2205
|LSTM x fasttext |0.9132 | 0.9251|0.9788|0.9846|0.2775 | 0.2152
|BERT(bert-base-uncased) | 0.9135 | 0.9237 | 0.9839 | 0.9774 | 0.2266 | 0.2470
|RoBERTa(roberta-base) | 0.8683 | 0.8570 | 0.9578| 0.9554| 0.3892| 0.3999
|LGBM x TFIDF | 0.8495 | 0.8608 | 0.9355 | 0.9467 | 0.4452 | 0.4065
|LGBM x GloVe | 0.7560 | 0.7635 | 0.8353| 0.8543 |0.7070 | 0.6685
|LGBM x w2v(googlenews) |0.4835 | 0.5037 |0.5508 |0.5648 | 1.1765| 1.1567
|LGBM x fasttext | 0.8743| 0.8825 |0.9503 | 0.9528|0.3749 | 0.3366
|LGBM x BERT(embedding) |0.8772 | 0.8735| 0.9519| 0.9553|0.3524 |0.3440
|XGB x TFIDF |0.8451 | 0.8555|0.9339 |0.9423|0.5067 |0.4647 
|XGB x GloVe |0.4199 |  0.4476| 0.5247|0.5363 |1.8890 | 1.8704
|XGB x w2v(googlenews) |0.4004 |0.4266 |0.5017 |0.5171 |1.9219 | 1.8261
|XGB x fasttext | 0.8728|0.8900  | 0.9476|0.9548 | 0.4293| 0.3723
|XGB x BERT(embedding) |0.8593 | 0.8623|0.9414 |0.9472 | 0.3942|0.3852
|CNN x GloVe | 0.9162| 0.9296 | 0.9815 |0.9813 | 0.2553| 0.2253
|CNN x w2v(googlenews) | 0.9222| 0.9266 | 0.9800 |0.9839 | 0.2513| 0.2161
|CNN x fasttext |0.9132 | 0.9319 | 0.9800 | 0.9822| 0.2684| 0.2207
|Logistic Regression x TFIDF | 0.8975| 0.8960 |0.9758 |0.9829 | 0.3873|0.3672
|SVM x TFIDF |0.8795 | 0.8855 |0.9482 | 0.8757| 0.3977| 0.3734
|SVM x GloVe | 0.4993|0.4895 | 0.5152|0.5141 |1.2742 |1.2710
|SVM x w2v(googlenews) |0.3952 | 0.3967|0.4853 |0.4996 |1.4341 |1.4375
|SVM x fasttext |0.4094 |0.4027 |0.5291 | 0.5557|1.2694 |1.2437
|SVM x BERT(embedding) |0.9087 | 0.9102|0.9694 | 0.9713|0.2699 |0.2741
|DistilBERT | 0.9102 | 0.8532 | 0.9784| 0.9808| 0.2509 | 0.2663
|Naive Bayes x TFIDF | 0.8728| 0.8705 | 0.9435| 0.9563| 0.4740| 0.4265
## Future work
- Run with multiple seeds, and comparison by medians of their accuracies.
- Comparison using multiple datasets
- Comparison for regression problems including Lasso, Ridge and so forth.
- Preperation for scripts using classes