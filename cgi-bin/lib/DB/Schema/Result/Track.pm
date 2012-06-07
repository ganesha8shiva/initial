package DB::Schema::Result::Track;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

DB::Schema::Result::Track

=cut

__PACKAGE__->table("track");

=head1 ACCESSORS

=head2 trackid

  data_type: 'integer'
  is_nullable: 0

=head2 cd

  data_type: 'integer'
  is_nullable: 0

=head2 title

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "trackid",
  { data_type => "integer", is_nullable => 0 },
  "cd",
  { data_type => "integer", is_nullable => 0 },
  "title",
  { data_type => "text", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("trackid");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2012-06-07 12:32:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yktC1TjLefIAc1StUONuBw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
