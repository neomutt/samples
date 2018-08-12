# Milhouse's neomutt setup

* milhouse@work.tld
* milhouse@home.tld
* milhouse@linux.tld

## getmail

For each address Milhouse has one setup like "~/.getmail/config/work.rc"

    [retriever]
    type = SimpleIMAPSSLRetriever
    server = imap.server.tld
    username = user
    password = password
    mailboxes = ("INBOX","Archive","Trash", "Spam", "Sent Items")
    [destination]
    type = MDA_external
    path = /usr/bin/procmail
    arguments = ("-f", "%(sender)", "~/.procmail/work.rc")
    [options]
    verbose = 1
    read_all = false
    delete = false
    delete_after = 7
    message_log = ~/.getmail/log

## procmail

For each address Milhouse has a procmail config-file ~/.procmail/work.rc: 

    DATE_YEAR_MONTH=`date +'%Y-%m'`
    MAILDIR=$HOME/.maildir
    PMDIR=$HOME/.procmail
    LOGFILE=$PMDIR/work.log
    LOGABSTRACT=yes
    VERBOSE=on
    DEFAULT=$MAILDIR/Accounts/Work/Archiv-${DATE_YEAR_MONTH}/
    
    
## notmuch
He has a notmuch tagging file: ~/.notmuch-tagging

     +work -- from:@work.tld


