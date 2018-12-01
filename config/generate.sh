#!/bin/bash

FILE=neomuttrc-example

SEP="##########################################################################"

echo $SEP >> $FILE
echo "#   00 - Neomutt configuration" >> $FILE
echo $SEP >> $FILE
cat variable/00-* >> $FILE

echo $SEP >> $FILE
echo "#   01 - Basic personal setup" >> $FILE
echo $SEP >> $FILE
cat variable/01-* >> $FILE

echo $SEP >> $FILE
echo "#   02 - Mailbox and folders" >> $FILE
echo $SEP >> $FILE
cat variable/02-* >> $FILE

echo $SEP >> $FILE
echo "#   03 - Compose email " >> $FILE
echo $SEP >> $FILE
cat variable/03-* >> $FILE

echo $SEP >> $FILE
echo "#   04 - Crypto" >> $FILE
echo $SEP >> $FILE
cat variable/04-* >> $FILE

echo $SEP >> $FILE
echo "#   05 - View / Look" >> $FILE
echo $SEP >> $FILE
cat variable/05-* >> $FILE

echo $SEP >> $FILE
echo "#   06 - SMTP" >> $FILE
echo $SEP >> $FILE
cat variable/06-* >> $FILE

echo $SEP >> $FILE
echo "#   07 - IMAP" >> $FILE
echo $SEP >> $FILE
cat variable/07-* >> $FILE

echo $SEP >> $FILE
echo "#   08 - POP3" >> $FILE
echo $SEP >> $FILE
cat variable/08-* >> $FILE

echo $SEP >> $FILE
echo "#   09 - Notmuch" >> $FILE
echo $SEP >> $FILE
cat variable/09-* >> $FILE

echo $SEP >> $FILE
echo "#   10 - Hooks" >> $FILE
echo $SEP >> $FILE
cat variable/10-* >> $FILE


