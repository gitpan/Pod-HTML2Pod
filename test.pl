# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'
# Time-stamp: "2000-10-04 02:00:27 MDT"
######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..2\n"; }
END {print "not ok 1\n" unless $loaded;}
use Pod::HTML2Pod;
$loaded = 1;
print "ok 1\n";

###########################################################################
$| = 1;

my $conv = Pod::HTML2Pod::convert(
  'content' => '<h1>FOO</h1>'
);

print(
 ($conv =~ m/=head1 FOO/m)
 ? "ok 2\n" : "FAIL 2\n"
);

__END__

