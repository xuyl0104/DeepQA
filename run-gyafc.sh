#!/bin/sh
# fix number of epochs (50) and initial learning rate (0.01, decrease gradually), change batch size
rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=250 --learningRate=0.01

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=350 --learningRate=0.01

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=450 --learningRate=0.01



# fix number of epochs(50) and batch size (250), change initial learning rate
# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=250 --learningRate=0.005

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=250 --learningRate=0.0075

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=250 --learningRate=0.01

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=250 --learningRate=0.0125

rm ./save/model/*
python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=250 --learningRate=0.015




# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=200 --learningRate=0.005

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=200 --learningRate=0.0075

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=200 --learningRate=0.01

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=200 --learningRate=0.0125

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=200 --learningRate=0.015




# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=300 --learningRate=0.005

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=300 --learningRate=0.0075

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=300 --learningRate=0.01

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=300 --learningRate=0.0125

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=300 --learningRate=0.015



# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=400 --learningRate=0.005

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=400 --learningRate=0.0075

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=400 --learningRate=0.01

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=400 --learningRate=0.0125

# rm ./save/model/*
# python ./main.py --keepAll --corpus gyafc --numEpochs=50 --batchSize=400 --learningRate=0.015
