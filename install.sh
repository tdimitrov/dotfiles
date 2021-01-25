#!/bin/bash

DOTFILES_DIR=`dirname "${BASH_SOURCE[0]}"`

grep -q 'dotfiles\/bash\/prompt\.sh' ~/.bashrc || echo ". ${DOTFILES_DIR}/bash/prompt.sh" > ~/.bashrc
