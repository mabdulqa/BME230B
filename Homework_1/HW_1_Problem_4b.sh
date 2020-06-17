# -------------------------------------------------------
# HW1 Problem 4b 
# 
# Script by: Mohammad Abdulqader
#
# this shell script is used to solve problem 4b in 
# the HW1 assignment for BME 230B
# -------------------------------------------------------

let a=0

# create these files
echo log_likelihood > experiment_1.txt
echo log_likelihood > experiment_2.txt
tail -3850 data.txt | awk -F '\t' '{print $1}' > y2.txt

while [ $a -lt 200 ] 
do 

    # shuf to get 10 random Y values.
    shuf -n 10 y.txt > sample_Y.txt
    shuf -n 10 y2.txt > sample_Y2.txt

    # now run pathy.jar for first experiment
    java -jar pathy.jar sample_Y.txt data.txt modela.bif >> experiment_1.txt

    # now run pathy.jar for second experiment
    java -jar pathy.jar sample_Y2.txt data.txt modela.bif >> experiment_2.txt

    # increment a (number of iterations)
    let a=a+1

done

# remove excess files
rm sample_Y.txt ReadMe.txt YgenesIndScore.txt y2.txt sample_Y2.txt

# done