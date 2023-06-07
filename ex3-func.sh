#!/bin/bash

# An example of different functions, which execute different functionality with extra syntax

# Colon in combination with > redirection operator, trancates a file to zero length. It creates the file, ifit does not exist

function zerofile () {
	: > $1
}

# Colon in combination with >> redirection operator, has no effect on the existing file; but it creates one, in case it does not exist

function creatfile () {
	: >>$1
}

