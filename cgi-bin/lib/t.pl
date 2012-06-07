use strict;
use warnings;


use DBIx::Class::Schema::Loader qw/make_schema_at/;




=comment
make_schema_at(
      'DB::Schema',
      { debug => 1,
        dump_directory => '.',
      },
      [ 'dbi:mysql:dbname=project', 'root', 'C0nfluence',
         #{ loader_class => 'MyLoader' } # optionally
      ],
  );
=cut


make_schema_at(
      'DB2::Schema',
      { debug => 1,
        dump_directory => '.',
      },
      [ 'dbi:mysql:dbname=project1', 'root', 'C0nfluence',
         #{ loader_class => 'MyLoader' } # optionally
      ],
  );

  
  

