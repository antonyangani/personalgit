#Awk is a string manipulation language

-- awk -F'/' {print $(NF-1)$NF} # this statement asks awk to use the / as a separator value then print NF(number of fields) - 1; this is the last field
example
-- find .git/objects -type f | awk -F'/' '{print $(NF-1)$NF}'

#FIELD SEPARATORS
-- awk 'BEGIN {OFS="\t"}; {print $1,$4,$5}'

The above directs awk to separate the values using a tab from the Beginning

#Excluding the first result of a print statement

-- tail -n +2

This tells the system to skip the first result and print the rest

#Modifying input

-- awk '{print "https://" $1}'
- This will added the prefix https:// to the output in position $1

#Doing Math
-- ps aux | grep -hE '^root(.*)' | awk '{sum+=$2}END{print sum/1024;}'






