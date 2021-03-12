#!/bin/sh

function say_hello()
{
	echo 'hello from function.'
}

export -f say_hello