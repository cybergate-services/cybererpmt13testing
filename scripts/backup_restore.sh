#!/usr/bin/env bash
lbackuplocpost=/opt/cybererpmt/postgresql*
lbackuplocodoo=/opt/cybererpmt/odoo_data

rbackuploc=/opt/backup/
DATE=`date +%Y%m%d%H%M`

#rsync -avp $lbackuplocpost :$rbackuploc
#rsync -avp $lbackuplocodoo :$rbackuploc

rsync -avp /opt/cybererpmt/postgresql* /opt/backup/$DATE
rsync -avp /opt/cybererpmt/odoo_data /opt/backup/$DATE


#find $rbackuploc/* -mtime +10 -exec rm {} \;
