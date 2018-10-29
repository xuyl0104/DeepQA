#### 1. Dataset overview:
##### MS_PARAPHRASE
- Total number of sentence pairs: 5801 (3900 valid paraphrase and 1901 not equivalent)
- Ratio between training and testing: 7:3 (70.3:29.7)
- Number of sentence pairs of of training and testing: 4076 and 1725

- We only need the sentence pairs which consists two 'equivalent' sentences. The sentence pairs has a mark 'quality = 1'.


##### GYAFC
📌Please note that GYAFC is for research purposes only and the corpus cannot be shared with anyone else. \
\
two sub-coupus
- Entertainment&Music (There are formal -> informal and informal -> formal. I choose formal -> informal)
    - Train: 52595 sentence pairs
    - Tune: 2877 sentence pairs
    - Test: 1416 sentence pairs
- Family&Relationships (This subset is NOT used as E&M only is large enough, I think...)
    - Train: 51967
    - Tune: 2788
    - Test: 1332

#### 2. What have done

- Read dataset files and extract the data into lines and sentence pairs

- After processes (word to vec, filter...), the data can be sent into the model and train
- After training, the model can be saved
- shell files to train with different parameter combinations


#### 3. TODO list

- [x] Extract the sentence pairs with quality = 1.
- [x] Play with batch_size, epochs, learning rate...
- [x] Study the performance curves of these parameters
- [ ] Set Spiedie environment (problem: how to run code with GPU? Explicitly add code to specify GPU but still run with CPU)
- [ ] Explore the validation process
- [ ] Read papers about word embedding (key words: stop words, connectors)
- [ ] Read RNN-VAE code
  