#!/bin/sh
# fix number of epochs (50, 100) and learning rate (0.01), change batch size
rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=400 --learningRate=0.01

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=300 --learningRate=0.01

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=200 --learningRate=0.01

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=100 --learningRate=0.01



# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=100 --batchSize=400 --learningRate=0.01

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=100 --batchSize=300 --learningRate=0.01

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=100 --batchSize=200 --learningRate=0.01

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=100 --batchSize=100 --learningRate=0.01



# fix number of epochs and batch size (100, 200, 300, 400), change learning rate
rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=100 --learningRate=0.005

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=100 --learningRate=0.0075

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=100 --learningRate=0.01

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=100 --learningRate=0.0125

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=100 --learningRate=0.015




rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=200 --learningRate=0.005

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=200 --learningRate=0.0075

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=200 --learningRate=0.01

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=200 --learningRate=0.0125

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=200 --learningRate=0.015




rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=300 --learningRate=0.005

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=300 --learningRate=0.0075

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=300 --learningRate=0.01

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=300 --learningRate=0.0125

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=300 --learningRate=0.015



rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=400 --learningRate=0.005

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=400 --learningRate=0.0075

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=400 --learningRate=0.01

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=400 --learningRate=0.0125

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=400 --learningRate=0.015

