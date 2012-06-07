use DB2::Schema;
use Data::Dumper;

#my $schema = DB::Schema->connect('dbi:mysql:dbname=project', 'root', 'C0nfluence');
my $schema = DB2::Schema->connect('dbi:mysql:dbname=project1', 'root', 'C0nfluence');

#my @artist_model = $schema->resultset('Artist')->all;
=comment
my $artist = $artist_model->create({
                                       artistid => 1,
                                       name     => 'bgs',
                                 });
print Dumper $artist;
=cut

#print Dumper  @artist_model;


###### Transaction / Entry #####
=comment
my $guard = $schema->txn_scope_guard;
my $artist = $schema->resultset('Artist')->create({ artistid=>3, name=> 'AKON'});
my $cd = $artist->create_related('cds',{cdid => 1, title=>'alb1'});
$guard->commit;
=cut
#################################

=comment
  $schema->resultset('Artist')->create(
     { artistid => 4, name => 'Manufactured Crap', cds => [
            { title => 'My First CD'},
            { title => 'Yet More Tweeny-Pop crap'},
         ],
      },
   );
=cut
 
 $schema->resultset('Author')->create(
     { name => 'Manufactured Crap2', books => [
            { title => 'My First CD2'},
            { title => 'Yet More Tweeny-Pop crap2'},
         ],
      },
   );
 
 
#print $artist->count();
 