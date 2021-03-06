#!/bin/bash
# shellcheck disable=SC1090
## Comments #'s and !'s .'s

## Variables
SCRIPTDIRA=$(dirname $0)
source "$SCRIPTDIRA"/foldervars.sh

if [[ -f $BFILETEMP ]]
then
  cat $BFILETEMP | sed '/^\#/d; s/[[:space:]]\#.*$//g; /^\!/d; s/[[:space:]]\!.*$//g; /^\./d; /\.$/d' > $BTEMPFILE
fi

if [[ -f $BFILETEMP ]]
then
  rm $BFILETEMP
fi
