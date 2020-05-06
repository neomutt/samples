#!/bin/bash

FILE=neomuttrc-imap-example

SEP="##########################################################################"

echo $SEP >> $FILE
echo "#  IMAP - Neomutt configuration" >> $FILE
echo $SEP >> $FILE

cat variable/01-002-realname.txt >> $FILE
cat variable/01-003-from.txt >> $FILE
cat variable/02-002-folder.txt >> $FILE

echo "# set folder=\"imaps://domain.tld/\"" >> $FILE

cat variable/02-003-spoolfile.txt >> $FILE

echo "# set spoolfile=\"+INBOX\"" >> $FILE

cat variable/02-007-mailboxes.txt >> $FILE

echo "mailboxes \$spoolfile" >> $FILE

cat variable/07-001-imap_user >> $FILE
cat variable/07-002-imap_pass >> $FILE

