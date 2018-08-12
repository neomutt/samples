# Milhouse's neomutt setup

* `milhouse@work.tld`
* `milhouse@home.tld`
* `milhouse@linux.tld`

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

Milhouse can decide for each account, which mailboxes should be used. How long the emails shall stay on the server
and which rules should be apply (procmail).

## procmail

For each address Milhouse has a procmail config-file ~/.procmail/work.rc: 

    DATE_YEAR_MONTH=`date +'%Y-%m'`
    MAILDIR=$HOME/.maildir
    PMDIR=$HOME/.procmail
    LOGFILE=$PMDIR/work.log
    LOGABSTRACT=yes
    VERBOSE=on
    DEFAULT=$MAILDIR/Accounts/Work/Archiv-${DATE_YEAR_MONTH}/

For this Work-Account he likes to have the mails in an Archiv-Folder like:

* Archiv-2018-01/
* Archiv-2018-02/
* Archiv-2018-03/

## procmail rules
Milhouse use his linux adress to subscribe to Mailinglisten like neomutt, debian,...

    #####################################################################
    # Neomutt
    #####################################################################

    # Neomutt-Users
    :0
    * ^List-Id:.*neomutt-users-neomutt\.org
    Mailinglist/NeoMutt/Neomutt-Users/

    # Neomutt Developers
    :0
    * ^List-Id:.*neomutt-devel-neomutt\.org
    Mailinglist/NeoMutt/Neomutt-Devel/

Those E-Mails will be sorted via procmail.
    
## notmuch
He has a notmuch tagging file: ~/.notmuch-tagging

     +work -- from:@work.tld
     +Neomutt +Neomutt-Users -- folder:Mailinglist/NeoMutt/Neomutt-Users/
     +Neomutt +Neomutt-Devel -- folder:Mailinglist/NeoMutt/Neomutt-Devel/
     
## neomutt

    virtual-mailboxes "My Inbox" "notmuch://?query=tag:inbox"
    virtual-mailboxes "Colleagues" "notmuch://?query=tag:work"
    virtual-mailboxes "Neomutt-Users" "notmuch://?query=tag:Neomutt-Users"
    virtual-mailboxes "Neomutt-Devel" "notmuch://?query=tag:Neomutt-Devel"
    virtual-mailboxes "E-Mails von heute" "notmuch://?query=date:today"
    virtual-mailboxes "E-Mails von gestern" "notmuch://?query=date:yesterday"
    virtual-mailboxes "E-Mails von dieser Woche" "notmuch://?query=date:week.."
    virtual-mailboxes "E-Mails von diesem Monat" "notmuch://?query=date:month.."
    
    virtual-mailboxes "E-Mails mit PDF" "notmuch://?query=attachment:\.pdf"
    virtual-mailboxes "E-Mails mit JPG" "notmuch://?query=attachment:\.jpg%20or%20attachment:\.png"

    subscribe -group Neomutt neomutt-users@neomutt.org
    subscribe -group Neomutt neomutt-devel@neomutt.org

    color index_author              default yellow                  '%f Neomutt'
    send-hook "%C Neomutt" 'source ~/.neomutt/profile.linux'
    
## Profile
For each address Milhouse has a profile config for neomutt (~/.neomutt/profile.work).
Above you can see the send-hook `"%C Neomutt" 'source ~/.neomutt/profile.linux`.
When Milhouse sends a mail to an E-Mail address which belongs to the Group Neomutt,
neomutt will read the profile config for "the his linux account".
In this config file all setting for the linux account will be done:

    set from        = "milhouse@linux.tld"
    set realname    = "Milhouse the Linux nerd"
    set signature   = "~/.neomutt/signature.linux"
    set gpg_sign_as = 0x1234567
    ... SMTP Setting ...



