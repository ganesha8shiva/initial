use strict;
use warnings;


use DBIx::Class::Schema::Loader qw/make_schema_at/;

make_schema_at(
      'My::Schema',
      { debug => 1,
        dump_directory => '.',
      },
      [ 'dbi:Pg:dbname="project"', 'root', 'C0nfluence',
         { loader_class => 'MyLoader' } # optionally
      ],
  );


  
  

