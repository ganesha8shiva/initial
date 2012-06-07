package DB::Schema::Result::Artist;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

DB::Schema::Result::Artist

=cut

__PACKAGE__->table("artist");

=head1 ACCESSORS

=head2 artistid

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "artistid",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("artistid");

__PACKAGE__->has_many('cds', 'DB::Schema::Result::Cd', 'artist');

# Created by DBIx::Class::Schema::Loader v0.07010 @ 2012-06-07 12:32:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PnGr/zF8Q553GU/jqwb8og


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
