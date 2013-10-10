use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME          => 'Mojolicious::Plugin::ConfigSimple',
  VERSION_FROM  => 'lib/Mojolicious/Plugin/ConfigSimple.pm',
  AUTHOR        => 'Hugh Esco <hesco@cpan.org>',
  PREREQ_PM     => {
                   'Mojolicious' => '4.45',
      'Config::Simple::Extended' => '0.15',
  },
  TEST_REQUIRES => {
               'Test::Exception' => '0.32',
  },
  test          => {TESTS => 't/*.t'}
);

