#!/bin/sh
# fixed number of epochs and learning rate (0.002), change batch size
rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=50 --batchSize=120

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=50 --batchSize=100

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=50 --batchSize=80

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=50 --batchSize=60

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=50 --batchSize=40

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=50 --batchSize=20

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=50 --batchSize=75



# fixed number of epochs and batch size, change learning rate
rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=50 --batchSize=50 --learningRate=0.005

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=50 --batchSize=50 --learningRate=0.0075

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=50 --batchSize=50 --learningRate=0.01

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=50 --batchSize=50 --learningRate=0.015


# fixed learning rate and batch size, change number of epochs
rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=50 --batchSize=50

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=75 --batchSize=50

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=100 --batchSize=50

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=125 --batchSize=50

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=150 --batchSize=50

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=175 --batchSize=50

rm ./save/model/*
python ./main.py --keepAll --corpus msparaphrase --numEpochs=200 --batchSize=50
