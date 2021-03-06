#!perl -T

use strict;
use warnings;
use Carp;
use Test::More tests => 2;
use App::Validation::Automation;
use English qw(-no_match_vars);

#Check if App::Validation::Automation::Alarming is able to compile
open my $log_handle,">>", "/var/tmp/log.log"
    or croak "Could not create /var/tmp/log.log : $OS_ERROR";

my $obj = App::Validation::Automation->new(
    config          => {},
    log_file_handle => $log_handle,
);

#Check what all App::Validation::Automation can mail and page
can_ok($obj, 'mail');
can_ok($obj, 'page');

close $log_handle;
