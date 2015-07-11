#!/usr/bin/env perl
use strict;
use warnings;
use LWP::UserAgent;
use JSON;
use Getopt::Long;


sub cmd_help
{
  print "get-repos: error parsing commandline.  Try again?\n";
  print "get-repos [--username USERNAME]\n";
  exit;
}
my $username = 'rwhitworth';
GetOptions('username=s' => \$username) or cmd_help;

my $ua = LWP::UserAgent->new;
$ua->default_header('Accept' => 'application/vnd.github.v3+json');

my $res = $ua->get("https://api.github.com/users/$username/repos");

if ($res->is_success)
{
#  print $res->decoded_content . "\n";

  print "Repo listing for $username\n\n";

  my $jt = JSON->new->utf8->decode($res->decoded_content);
  my $count = 0;

  while (1 == 1)
  {
    if (!defined $jt->[$count]{id}) { last; }
    print $jt->[$count]{name} . "\n";
    print "Update: " . $jt->[$count]{updated_at};
    print sprintf " -=- W: %04d F: %04d", $jt->[$count]{watchers_count}, $jt->[$count]{forks_count};
    print "\n";
    $count++;
  }

  print "\nTotal count: $count\n";
}
else
{
  print "get-repos: error gathering repo list for $username\n";
  die $res->status_line;
}
