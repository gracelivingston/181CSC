#!/usr/bin/perl

$shfac = 95;
$txtfname = $ARGV[0];

$txtfname =~ /\.txt$/ or die "$txtfname is not a .txt file";
($cypfname = $txtfname) =~ s/\.txt$/.enc/;

open($txtf, "< :encoding(utf8)", $txtfname)
    or die "Could not open $txtfname: $!";
open($cypf, "> :raw :bytes", $cypfname)
    or die "Could not open $cypfname: $!";

print "Encrypting $txtfname to $cypfname.\n";

while(<$txtf>) {
    $enc = "";
    foreach $c (split "", $_) {
        $enc .= chr (((ord $c) + 95) % 256);
    }
    print $cypf $enc;
}

close($cypf);
close($txtf);
