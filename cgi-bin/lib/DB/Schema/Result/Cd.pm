package DB::Schema::Result::Cd;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

DB::Schema::Result::Cd

=cut

__PACKAGE__->table("cd");

=head1 ACCESSORS

=head2 cdid

  data_type: 'integer'
  is_nullable: 0

=head2 artist

  data_type: 'integer'
  is_nullable: 0

=head2 title

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "cdid",
  { data_type => "integer", is_nullable => 0 },
  "artist",
  { data_type => "integer", is_nullable => 0 },
  "title",
  { data_type => "text", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("cdid");

__PACKAGE__->has_many('tracks', 'DB::Schema::Result::Track', 'cd');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2012-06-07 12:32:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:U7w3ZHrmCcrkIzemq4xFEw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
