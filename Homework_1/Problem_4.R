# -------------------------------------------------------
# HW1 Problem 4
# 
# Script by: Mohammad Abdulqader
#
# this shell script is used to solve problem 4b and 4c in 
# the HW1 assignment for BME 230B
# -------------------------------------------------------

# read data
data1 <-read.csv('experiment_1.txt')
data2 <-read.csv('experiment_2.txt')
data3 <-read.csv('experiment_3.txt')
data4 <-read.csv('experiment_4.txt')


# Model A
pdf('Problem_4b.pdf')
par(mfrow = c(2, 1))

hist(data1$log_likelihood, main='Log-Likelihood from 10 Genes in y.txt - Model A', 
    col = 'blue', xlab = 'Log-Likelihood')
hist(data2$log_likelihood, main='Log-Likelihood from 10 Random Genes - Model A', 
    col = 'blue', xlab = 'Log-Likelihood')

dev.off()

# Model B
pdf('Problem_4c.pdf')
par(mfrow = c(2, 1))

hist(data3$log_likelihood, main='Log-Likelihood from 10 Genes in y.txt - Model B', 
    col = 'blue', xlab = 'Log-Likelihood')
hist(data4$log_likelihood, main='Log-Likelihood from 10 Random Genes - Model B', 
    col = 'blue', xlab = 'Log-Likelihood')

dev.off()

par(mfrow = c(1, 1))