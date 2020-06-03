#!/bin/bash
set -e
set -u
set -o pipefail

while getopts ':u:h:p:' OPTION; do
  case "$OPTION" in
    u)
      uvalue="$OPTARG"
      echo "user name is $OPTARG"
      ;;

    h)
      echo "help"
      ;;

    p)
      pvalue="$OPTARG"
      echo "password is $OPTARG"
      ;;
    ?)
      echo "script usage: $(basename $0) [-u] [-h] [-p password]" >&2
      exit 1
      ;;
  esac
done


mkdir week1_exp1
cd week1_exp1

wget https://www.dropbox.com/s/co7acc5qt71tao2/AIML_DS_NEWSGROUPS_PICKELFILE.pkl.zip?dl=1
unzip AIML_DS_NEWSGROUPS_PICKELFILE.pkl.zip?dl=1

pip3 install gensim

