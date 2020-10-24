##!/bin/bash -x
echo "Enter the number"
read n
declare -A array
array=([odd]=0 [even]=0)
if [ $n -gt 99 -a $n -lt 1000 ]
then

   rev=0
   num=$n
   while [ $num -ne 0 ]
   do
      m=$((num%10))
      rev=$(((rev*10)+m))
      num=$((num/10))
   done
   if [ $n -eq $rev ]
   then
      echo "palindrom"
   else
      echo "Not palidrom"
   fi

   for((i=2;i<=$n*$n;i++))
   do
      while [ $((n%i)) -eq 0 ]
      do
         echo $i
         if [ $((i%2)) -eq 0 ]
         then
            ((array[even]++))
         else
            ((array[odd]++))
         fi
         n=$((n/i))
      done
   done
   echo "${array[@]}"
   echo "${!array[@]}"
else
   echo "Enter 3 digit number"
fi

