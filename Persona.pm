# Persona.pm
package Persona;
use strict;
use warnings;
use YAML::Tiny;
use Term::ANSIColor;

sub new {
    my ($class, $filename) = @_;
    my $yaml = YAML::Tiny->read($filename);
    my $data = $yaml->[0];
    my $self = {
        name               => $data->{name},
        personality_traits => $data->{personality_traits},
        background         => $data->{background},
        communication_style => $data->{communication_style},
        emotional_state    => $data->{emotional_state},
        knowledge_base     => $data->{knowledge_base},
        memory             => [],
    };
    bless $self, $class;
    return $self;
}

sub generate_response {
    my ($self, $context) = @_;
    # Simple response generation based on knowledge_base and emotional_state
    my $topic = $context->{topic} || 'life';
    my $response = "";

    # Select a random expertise area
    my $expertise = $self->{knowledge_base}->{expertise};
    my $area = $expertise->[ int(rand(@$expertise)) ];

    # Craft response based on communication style
    if ($self->{communication_style}->{language_use} =~ /technical/i) {
        $response = "From a technical standpoint, $topic is closely related to $area.";
    } elsif ($self->{communication_style}->{language_use} =~ /poetic/i) {
        $response = "The essence of $topic dances gracefully with the art of $area.";
    } else {
        $response = "I believe $topic is deeply connected to my passion for $area.";
    }

    # Adjust tone
    if ($self->{communication_style}->{tone} =~ /enthusiastic/i) {
        $response = ucfirst($response) . " Isn't it fascinating?";
    } elsif ($self->{communication_style}->{tone} =~ /serious/i) {
        $response = ucfirst($response) . " This is a critical matter.";
    }

    return $response;
}

1; # End of Persona.pm
