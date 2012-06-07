package DB;
use base qw/DBIx::Class::Schema::Loader/;

use strict;
use warnings;


my $database = "project";

my @connection_args = (
   "dbi:mysql:$database:localhost",
   "root",
   "C0nfluence",
   {
      loader_options => {
         debug => $ENV{DBIC_TRACE} || 0,
         use_namespaces => 1,
      }
   }
);

__PACKAGE__->connection(@connection_args);
__PACKAGE__->load_namespaces;

1;

