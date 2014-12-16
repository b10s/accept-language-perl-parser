#!/usr/bin/perl

use Data::Dumper;

$accept_langs="ru, en-gb;q=0.8, en;q=0.7";


print Dumper(sort { $b->{q} <=> $a->{q} } map { s/^\s+|\s+$//g; /([\w-]+)(;q=(\d+(\.\d+)?))/; {l=>$1, q=>$3//1} } split(",", $accept_langs) );