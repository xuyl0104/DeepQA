#### 1. Dataset overview:
Total number of sentence pairs: 5801 (3900 valid paraphrase and 1901 not equivalent)
Ratio between training and testing: 7:3 (70.3:29.7)
Number of sentence pairs of of training and testing: 4076 and 1725

We only need the sentence pairs which consists two 'equivalent' sentences. The sentence pairs has a mark 'quality = 1'.



#### 2. What have done

- Read dataset files and extract the data into lines and sentence pairs

- After processes (word to vec, filter...), the data can be sent into the model and train
- After training, the model can be saved
- If saved model files exist, the program can restore from the file.



#### 3. TODO list

- [ ] extract the sentence pairs with quality = 1.

- [ ] play with batch_size, epochs, learning rate...
- [ ] study the performance curves of these parameters