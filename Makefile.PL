# This -*- perl -*- script writes the Makefile for Pod::HTML2Pod
# Time-stamp: "2000-10-04 14:39:46 MDT"
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
require 5.004;
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'	=> 'Pod::HTML2Pod',
    'VERSION_FROM' => 'HTML2Pod.pm', # finds $VERSION
    'dist'        => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    'PREREQ_PM'    => {	
                         # Yes, a lot of prereqs:
	                 'HTML::Entities' => 0, # don't check version
	                 'HTML::Tagset' => 3.02,
	                 'HTML::TreeBuilder' => 3.05,
                           # probably requires HTML::Parser
	                 'HTML::Element' => 3.05,
                         'Carp' => 0, # don't check version
                         'UNIVERSAL' => 0, # don't check version
                         'integer' => 0, # don't check version
		      },
);

package MY;

sub libscan
{ # Determine things that should *not* be installed
    my($self, $path) = @_;
    return '' if $path =~ m/~/;
    $path;
}

__END__
