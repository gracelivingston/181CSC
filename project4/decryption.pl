#!/usr/bin/perl

$shfac = 95;
$cypfname = $ARGV[0];

$cypfname =~ /\.enc$/ or die "$cypfname is not an .enc file";
($txtfname = $cypfname) =~ s/\.enc$/.txt/;

open(CYPF, "< :raw :bytes", $cypfname)
    or die "Could not open $cypfname: $!";
open($txtf, "> :encoding(utf8)", $txtfname)
    or die "Could not open $txtfname: $!";

print "Decrypting $cypfname to $txtfname.\n";

$buf = "";

while(read(CYPF, $buf, 64)) {
    $txt = "";
    foreach $c (split "", $buf) {
        $txt .= chr (((ord $c) + 256 - 95) % 256);
    }
    print $txtf $txt;
}

close($cypf);
close($txtf);
