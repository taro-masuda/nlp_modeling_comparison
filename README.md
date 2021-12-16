# nlp_modeling_comparison
- This repository shows some modeling examples about Natural Language Processing (NLP). All models and features are popularly used in Kaggle competition notebooks. You can compare multiple methods by a naive text classification experiment.
- Reference (blog URL in Japanese) : (TBA)
## Enviroments
- w/o neural nets: built from Dockerfile
- w/ neural nets: Google Colaboratory (GPU/TPU with high memory)

## Experiment Results
### UCI Machine Learning Repository: News Aggregator Data Set
|手法 |val_acc |test_acc | val_roc_auc<br>(macro, 'ovo') | test_roc_auc<br>(macro, 'ovo') | val_logloss | test_logloss
| ---- | ---- | ---- | ---- | ---- | ---- | ---- |
|LSTM x GloVe |0.8898 | 0.8840 ||| | 
|LSTM x w2v(googlenews) | | ||| | 
|LSTM x fasttext | | ||| | 
|RNN x GloVe || ||| | 
|GRU x GloVe || ||| | 
|BERT(bert-base-uncased) | | | |
|RoBERTa(roberta-base-uncased) | 0.8428 | 0.8533 | | | | 
|LGBM x TFIDF | 0.8787 | 0.8840 | 0.9515 | 0.9548 | 0.3889 | 0.3654
|LGBM x GloVe | 0.7560 | 0.7635 | 0.8353| 0.8543 |0.7070 | 0.6685
|LGBM x w2v(googlenews) |0.4835 | 0.5037 |0.5508 |0.5648 | 1.1765| 1.1567
|LGBM x fasttext | 0.8743| 0.8825 |0.9503 | 0.9528|0.3749 | 0.3366
|LGBM x BERT(embedding) | | | | | |
|XGB x TFIDF |0.8832 | 0.8810 |0.9520 |0.9548|0.4433 |0.3654 |
|XGB x GloVe |0.4199 |  0.4476| 0.5247|0.5363 |1.8890 | 1.8704
|XGB x w2v(googlenews) |0.4004 |0.4266 |0.5017 |0.5171 |1.9219 | 1.8261
|XGB x fasttext | 0.8728|0.8900  | 0.9476|0.9548 | 0.4293| 0.3723
|XGB x BERT(embedding) | | | | | |
|CNN x  | |  | 0.5048 | | | 
|Logistic Regression x TFIDF | 0.9139| 0.9304 ||| | 
|SVM | |  | | | | 
|DistilBERT | 0.9102 | 0.8532 | 0.9784| 0.9808| 0.2509 | 0.2663
|Naive Bayes | |  | | | | 
## Future work
- Run with multiple seeds, and comparison by medians of their accuracies.
- Comparison using multiple datasets
- Preperation for scripts using classes