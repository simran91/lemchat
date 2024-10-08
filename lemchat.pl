#!/usr/bin/env perl
# lemchat.pl
use strict;
use warnings;
use lib '.';  # Include current directory for module search
use Persona;
use Term::ANSIColor;
use Time::HiRes qw(usleep);

# Load personas
my @persona_files = glob('personas/*.yml');
my @personas;

foreach my $file (@persona_files) {
    my $persona = Persona->new($file);
    push @personas, $persona;
}

# Conversation context
my %context = (
    topic => 'personal growth',
);

# Conversation loop
print color('bold cyan'), "=== Welcome to lemchat! ===\n", color('reset');

my $turns = 10;  # Number of conversation turns
for my $i (1..$turns) {
    foreach my $persona (@personas) {
        my $response = $persona->generate_response(\%context);
        print color('bold yellow'), $persona->{name}, ": ", color('reset');
        print "$response\n";

        # Update context (simple example)
        $context{topic} = $persona->{knowledge_base}->{expertise}->[0];

        # Simulate thinking time
        usleep(500_000);  # 0.5 seconds
    }
}

print color('bold cyan'), "=== End of Conversation ===\n", color('reset');
