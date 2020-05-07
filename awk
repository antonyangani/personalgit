#Awk is a string manipulation language

-- awk -F'/' {print $(NF-1)$NF} # this statement asks awk to use the / as a separator value then print NF(number of fields) - 1; this is the last field
example
-- find .git/objects -type f | awk -F'/' '{print $(NF-1)$NF}'



