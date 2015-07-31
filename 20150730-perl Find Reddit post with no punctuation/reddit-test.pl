$|++;
use strict;
use LWP::UserAgent;
use JSON;
use Data::Dumper;
use CHI;

# reddit-test.pl inspired by this comment:
# https://www.reddit.com/r/programming/comments/3en2px/til_you_can_use_function_overloading_in_c/ctgz3zc?context=3

my $cache = CHI->new(	driver => 'File', 
			root_dir => './cache', 
			expires_in => '1y', 
			compress_threshold => 4096);

my $subreddit = shift;

if ($subreddit eq '')
{
  print "usage: reddit-test.pl subreddit-name\n";
  exit 101;
}

my $url = "https://www.reddit.com/r/$subreddit/hot/.json?limit=100";
my $ua = LWP::UserAgent->new;
$ua->timeout(3);
$ua->agent('Cygwin/Windows:reddit-test.pl:v1.0.0 (by /u/lithron - me@ryanwhitworth.com)');

my $content = $cache->get($url);
if (!defined $content)
{
  my $resp = $ua->get($url);
  if ($resp->is_success)
  {
    $content = $resp->decoded_content;
    $cache->set($url, $content);
  }
  else
  {
    print "$url not accessible.  Exiting.\n";
    exit 100;
  }
}


my $j = decode_json($content);

#print Dumper $j;
#print $#{$j->{data}->{children}} . "\n";

#print "\n" . $j->{data}->{children}[0]->{data}->{id} . "\n";

foreach my $x (@{$j->{data}->{children}})
{
#  print Dumper $x;
  my $selftext = $x->{data}->{selftext};
  if ((length($selftext) > 0) && ((index($selftext, '.') == -1) && (index($selftext, '?') == -1) && (index($selftext, '!') == -1)))
  {
    print 'ID:     ' . $x->{data}->{id} . "\n";
    print 'Author: ' . $x->{data}->{author} . "\n";
    print 'Title:  ' . $x->{data}->{title} . "\n";
    if ($x->{data}->{domain} ne ('self.' . $x->{data}->{subreddit}))
    {
      print 'URL:    ' . $x->{data}->{url} . "\n";
    }
    # print $x->{data}->{selftext} . "\n";
    print "$selftext\n";
    print "NO PERIOD FOUND!!!\n";
  }
}

