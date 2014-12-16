#!/usr/bin/perl

use Data::Dumper;

$accept_langs="en-US,en;q=0.8";

my @accept_langs = map { s/^\s+|\s+$//g; /([\w-]+)(;q=(\d+(\.\d+)?))?/i; {l=>$1, q=>$3//1} } split(",", $accept_langs);
sort { $b->{q} <=> $a->{q} } @accept_langs;

print Dumper(@accept_langs);