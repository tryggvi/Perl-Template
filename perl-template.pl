#!/usr/bin/perl -w
# This is a template for perl scripts

use strict;
use Getopt::Long;

## Settings


## Global variables
my ($o_verb, $o_help);

## Funtions
sub check_options {
	Getopt::Long::Configure ("bundling");
	GetOptions(
		'v'     => \$o_verb,            'verbose'	=> \$o_verb,
		'h'     => \$o_help,            'help'	=> \$o_help,
	);

	if(defined ($o_help)){
		help();
		exit 1;
	}
}

sub help() {
	print "$0\n";
        print <<EOT;
-v, --verbose
        print extra debugging information
-h, --help
	print this help message
EOT
}

sub print_usage() {
        print "Usage: $0 [-v] ]\n";
}

## Main
check_options();

#...code...#
