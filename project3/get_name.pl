#!/usr/bin/perl

open($passwd, "<", "/etc/passwd.bak")
    or open($passwd, "<", "/etc/passwd")
    or die "Can’t open password database: $!";

while(<$passwd>) {
    @fields = split /:/;

    if ($fields[0] ne $ARGV[0]) {
        next;
    } else {
        printf "%-20s%s\n", "User ID:", $fields[2];
        printf "%-20s%s\n", "Home directory:", $fields[5];
        exit;
    }
}

printf "User: $ARGV[0] does not exist\n";
