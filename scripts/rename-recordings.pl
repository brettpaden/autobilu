#!/usr/bin/perl

my $area_number = shift;
my $cue_number = 1;

if (!$area_number) {
    warn "no area number specified";
    exit;
}

my @original_files = `ls 43*.wav`;
foreach my $file (@original_files) {
    chomp $file;
    my $nice_cue_number = $cue_number < 10 ? "0$cue_number" : $cue_number;
    my $mv_command = "sox $file commands/area$area_number-cue$nice_cue_number.wav trim 0 1";
    print `$mv_command`;
    $cue_number++;
}
