
important dollar notations used in shell scripts:
-------------------------------------------------------

 $# --> To know number of arguments passed to script
 $$ --> To know PID(processID) of the script 
 $* --> To print all arguments name passed to script
 $0 --> To Print the name of script which i am executing 


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

script to check dollar notations:
---------------------------------

#!/bin/bash 
echo "Display employee name $1 "
echo "Display emloyee id $2 "
echo "Display employee location $3 "
echo "Display employee state $4 "
echo
echo " number of arguments passed to script is ==> $# "
echo " PID(processID) of the script is ==> $$ "
echo " print all arguments i have passed to this script ==> $* "
echo " Print the name of script which i am executing ==> $0 "


sh <script-name>.sh  smith  12345 pune maharshtraa



Types of variable substitution in shell script :
------------------------------------------------
1. Hardcoded:
------------- 
   name=alice
   password=mypassword

2. Command line arguments:
---------------------------
   name=$1
   password=$2
   sh scriptname.sh <argument1> <argument2>


3. read:
--------
   used to run script in interactive mode.
   using read we can pass input to script after executing script.

Note:
   syntax: read <VARIABLE_NAME> 
            varaible value we van enter interactively using read
   

    ex1: read_test.sh
    ---------------
    #! /bin/bash 
    echo "Enter value of variable A:" 
    read A
    echo "Enter value of variable B:" 
    read B
    echo "A Value given is: $A" 
    echo "B Value given is: $B"
    
    ex2: read_test2.sh
    -------------------
    #!/bin/bash
    echo "enter your username"
    read MYUSERNAME
    echo
    echo "enter your email ID"
    read EMAILID
    echo
    echo "enter your password"
    read -s PASSWORD
    echo
    echo
    echo "my username entered is $MYUSERNAME "
    echo
    echo "my email ID is $EMAILID "
    echo
    echo "my password is $PASSWORD "



Note:
-----
read -s ==> option -s signifies sensitive data



++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



Conditional statements:
-----------------------

The conditional statement is used to do some activity based on decision-making  (i.e true / false). 

if else condition:
------------------

syntax:

if [ <condition> ]
then
  #commands to be executed if condition is true
else
  #commands to be executed if we condition is flase
fi


-------------------------------------------------------------------------------------------------


script to check whether given string is alice or not using 3 VARIABLE SUBSTITUTION formats?
==========================================================================================

ex: Script in hardcoded format

    #!/bin/bash
    MYNAME=alice
    if [ $MYNAME = "alice" ]
    then
       echo "Condition is true, Hello alice Good morning "
    else
       echo "username entered is not alice.... PLease check again...."
    fi


ex: Script in command line arguments format

    #!/bin/bash
    MYNAME=$1
    if [ $MYNAME = "alice" ]
    then
       echo "Condition is true, Hello alice Good morning "
    else
       echo "username entered is not alice.... PLease check again...."
    fi
 
    observations:
  	if we pass alice as argument ($1) alice = alice ===> condition true ==> execute command under then
     
	if we pass viratkohli as argument ($1) viratkohli = alice ==> condition false ==> execute command under else


ex: Script in read command format

    #!/bin/bash
	echo "enter value for variable named MYNAME ....."
    read MYNAME
    if [ $MYNAME = "alice" ]
    then
       echo "Condition is true, Hello alice Good morning "
    else
       echo "username entered is not alice.... PLease check again...."
    fi





    
    script to check that whether argument passed to script is 5 or not?
    -------------------------------------------------------------------	
    #!/bin/bash
    value1=$1
    if [ $value1 = 5 ]
    then
      echo " Condition is true, value is 5 "
    else 
      echo " Condition is fasle, value is incorrect & it is not 5 "
    fi



=========================================================================================




Relational Operators: (Numeric Comparison Operators) 
-----------------------------------------------------
These operators are used to evaluate mathematical conditions in if condition of shell script

-gt  Greater than 
-ge  Greater than or equal to 
-lt  Less than 
-le  Less than or equal to 
-eq  Is equal to 
-ne  Not equal to

These operators return boolean value (true/false)
true --> block inside then block will get executed
false --> block inside else block will get executed


1.  script to check given number ( as argument) is equal to 10 or not ?

test.sh 
-------
#!/bin/bash
if [ $1 -eq 10 ]
then
    echo " condition is true/ sucesss: Given argument value is 10.... "
else
     echo "condition has failed : Given argument value is not  10.... "
fi


------------

2.  script to check given number is greater than 5 or not.

#!/bin/bash
if [ $1 -gt 10 ]
then
    echo " condition is true/ sucesss: Given argument value is  greater 10.... "
else
     echo "condition has failed : Given argument value is lesser than 10.... "
fi


-----------

3.  script to check only two arguments are passed to script ?

Note: $# --> command to check number of arguments parsed to script

#!/bin/bash
if  [ $# -eq 2 ]
then 
    echo " condition is true/ sucesss: Arguments passed to script is 2 "
else
    echo "condition has failed: Arguments passed to script are not 2 "
fi



Note:
-----
#(comment) ==> if a line starts with # its considered as comment & it will get ignored while executing script.
comment is generally used for authors refernce

shell scripting is also called bash scripting