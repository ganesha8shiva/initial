#!C:/Perl/bin/perl.exe -w
use strict;
use warnings;
use Data::Dumper;
use CGI;
use CGI::Carp qw ( fatalsToBrowser ); 
use File::Basename;
use DBI;

my $q = CGI->new;
print $q->header();
#print Dumper $q;

#my $upload_filehandle = $q->upload("imp_file");
#my $row = undef;
#while ( <$upload_filehandle> ) 
#{ 
#   $row = $_; 
#   print "<br/>";
#   print Dumper $_;
#}

my $dbh = DBI->connect("dbi:SQLite:dbname=../../learn.db","","",{RaiseError => 1, AutoCommit => 1});
print Dumper $dbh; 

my $all = $dbh->selectall_arrayref("SELECT * FROM learndb");
print Dumper $all;







