#Navigating in VIM
'j' -> down key
'k' -> up key
'h' -> left 
'l' -> right

#Jumping from word to word
 'w' -> jumps from one to word
 'b' -> helps jump back a word
 'shift + $' -> end of the line
 'shift + ^' -> start of the line'
  'gg' -> begging of a file
  'G' -> the end of a file
#Deleting and undoing changes
-- 'x' -> deletes words underneath the cursor
-- 'u' -> pressed severally undoes the edits to the file
#Deleting multiple lines
-- go to command mode ( leave insert )
-- if you want to delete 3 lines that follow each other
-- type '3dd'
-- to undo deletions, type 'u'

#Copy and Paste
-- Shift + v ( select  )
 'y' -> (Yunk) this is the copy command
 'shift + P' -> (Paste) this is the paste command (Capital P appends a space before between the word being pasted and the other chunk)
#Selecting and Deleting
-- Shift + 'v'
-- arrow key ( Down/UP )
-- letter 'd'

#Search
-- put a '/{term_to_be_searched}'
-- 'lowercase n will go to the next instance of the search term'
-- 'Shift + n' will go to in the reverse direction 

#Search and Replace
-- %s/term_to_search/Term_to_replace_with/g ( g will make the changes globally )
-- but to negate the latter you can add 'c' to confirm if you want to make a change at each and every step

#NAVIGATING FASTER
-- move 6 lines down => '6+'
-- move word to word => 'w'
-- change word to uppercase letters => 'gUaW' (mnemonic go Upper a word)
-- change word into lowercase letters > guaW
 
