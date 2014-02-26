package Reddit::Client::Account;

use strict;
use warnings;
use Carp;

require Reddit::Client::Thing;
require Reddit::Client;

use base   qw/Reddit::Client::Thing/;
use fields qw/
	comment_karma 
	created 
	created_utc 
	has_mail 
	has_mod_mail
	has_verified_email 
	is_friend 
	is_gold 
	is_mod 
	link_karma
	modhash 
	over_18
/;

			  
			  
#sub saved {
#	my $self = shift;
#	
#	my $result = $self->{session}->api_json_request(api => Reddit::Client::API_USER, 
#											args => [$self->{name}, Reddit::Client::USER_SAVED]);
#
#	return {
#		before => $result->{data}{before},
#		after  => $result->{data}{after},
#        items  => [ map {Reddit::Client::Link->new($self->{session}, $_->{data})} @{$result->{data}{children}} ],
#    };
#}

1;

__END__

=pod

=head1 NAME

Reddit::Client::Account

=head1 DESCRIPTION

Stores information about the logged in user account.

=head1 AUTHOR

Jeff Ober L<mailto:jeffober@gmail.com>

=head1 LICENSE

BSD license

=cut
