#!/usr/bin/perl

use Data::Dumper;

my $show_file = shift;
my $row_number = 1;
my $show_duration = 0;
my $show = [];
my $show_qa = [];

open(INFO, $show_file);
while (<INFO>) {
    chomp;
    my @cells = split(/\,/);

    if ($row_number == 1) {
        $show_duration = pop @cells;
        @$show = (undef) x $length;
        $row_number++;
        next;
    }

    if ($row_number == 2) {
       # song titles
       $row_number++;
       next;
    }
    
    my $position = 0;
    my $name = shift @cells;
    my $cue = shift @cells;

    if ($name eq 'sleep') {
        $show_qa = \@cells;
        last;
    }
    
    foreach $cell (@cells) {
        if (length($cell) > 1) {
            $show->[$position] = {
                name => $name,
                cue  => $cue
            }
        }
        $position++;
    }
}

my $sleep_seconds = 0;


my $total_sleep;
my $total_cues;
my $commands = [];

foreach $cue (@$show) {
    if ($cue) {
        if ($sleep_seconds) {
            push @$commands, {
                command => "sleep $sleep_seconds",
                name => "sleep"
            };
            $total_sleep += $sleep_seconds;
        }
        push @$commands, {
            command => "sudo rpitx -m IQ -i commands/$cue->{cue}.wav -f 434004 1>>rpitx.log 2>>rpitx.log",
            name => "$cue->{cue} ($cue->{name})"
        };
        $sleep_seconds = 0;
        $total_cues++;
    }
    else {
        $sleep_seconds++;
    }
}

print <<EOF;
#!/bin/bash
# show duration of $show_duration

function countdown_sleep() {
  local duration=\$1
  local next_command=\$2
  local countdown=\$duration

  while ((countdown > 0)); do
    echo -ne "NEXT:       \$next_command:  [ \$countdown ]\\033[0K\\r"
    sleep 1
    ((countdown--))
  done
  echo -ne "\\033[0K"
}

EOF

my $current_command = 0;
foreach my $command (@$commands) {
    if ($command->{command} =~ /sleep (\d+)/) {
        print "countdown_sleep $1 '$commands->[($current_command+1)]->{name}'\n";
    }
    else {
        print "echo 'EXECUTING:  $command->{name}'\n";
        print "$command->{command}\n";
    }
    $current_command++;
}
    

    
     

    


    
    
    
