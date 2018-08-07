#!/usr/bin/perl

$n = int(rand(50)) + 1;

print q {
Welcome to the Random Game. To play:

I’ve chosen a number from 1 to 50. You have to guess it. You can enter
a your guess as a number, or “exit” or “quit” to leave any time.
I’ll tell you if your guess was correct, too high, or too low.
};

$| = 1;

do {
    print "Enter your guess from 1 - 50, or ‘exit’ or ‘quit’ to leave:";

    defined($g = <STDIN>) or die "Could not read from stdin: $!";

    print "\n";

    if ($g eq "quit" or $g eq "exit") {
            die "Quitting\n";
    }

    if ($g < 1 or $g > 50 ) {
        print "Please guess a number from 1 to 50.\n";
    } elsif ($g == $n) {
        print "You guessed right! The number I chose was $n\n";
        exit;
    } elsif ($g < $n) {
        print "Your guess was too low.\n";
    } else {
        print "Your guess was too high.\n";
    }

    print "\n";
} while (!eof(STDIN));
