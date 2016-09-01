package Shipment::FedEx::WSDL::TrackTypes::PagingDetail;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://fedex.com/ws/track/v9' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %PagingToken_of :ATTR(:get<PagingToken>);
my %NumberOfResultsPerPage_of :ATTR(:get<NumberOfResultsPerPage>);

__PACKAGE__->_factory(
    [ qw(        PagingToken
        NumberOfResultsPerPage

    ) ],
    {
        'PagingToken' => \%PagingToken_of,
        'NumberOfResultsPerPage' => \%NumberOfResultsPerPage_of,
    },
    {
        'PagingToken' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'NumberOfResultsPerPage' => 'SOAP::WSDL::XSD::Typelib::Builtin::nonNegativeInteger',
    },
    {

        'PagingToken' => 'PagingToken',
        'NumberOfResultsPerPage' => 'NumberOfResultsPerPage',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::FedEx::WSDL::TrackTypes::PagingDetail

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PagingDetail from the namespace http://fedex.com/ws/track/v9.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * PagingToken


=item * NumberOfResultsPerPage




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::FedEx::WSDL::TrackTypes::PagingDetail
   PagingToken =>  $some_value, # string
   NumberOfResultsPerPage =>  $some_value, # nonNegativeInteger
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
