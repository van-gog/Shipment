package Shipment::FedEx::WSDL::TrackTypes::QualifiedTrackingNumber;
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

my %TrackingNumber_of :ATTR(:get<TrackingNumber>);
my %ShipDate_of :ATTR(:get<ShipDate>);
my %AccountNumber_of :ATTR(:get<AccountNumber>);
my %Carrier_of :ATTR(:get<Carrier>);
my %Destination_of :ATTR(:get<Destination>);

__PACKAGE__->_factory(
    [ qw(        TrackingNumber
        ShipDate
        AccountNumber
        Carrier
        Destination

    ) ],
    {
        'TrackingNumber' => \%TrackingNumber_of,
        'ShipDate' => \%ShipDate_of,
        'AccountNumber' => \%AccountNumber_of,
        'Carrier' => \%Carrier_of,
        'Destination' => \%Destination_of,
    },
    {
        'TrackingNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::date',
        'AccountNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Carrier' => 'Shipment::FedEx::WSDL::TrackTypes::CarrierCodeType',
        'Destination' => 'Shipment::FedEx::WSDL::TrackTypes::Address',
    },
    {

        'TrackingNumber' => 'TrackingNumber',
        'ShipDate' => 'ShipDate',
        'AccountNumber' => 'AccountNumber',
        'Carrier' => 'Carrier',
        'Destination' => 'Destination',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::FedEx::WSDL::TrackTypes::QualifiedTrackingNumber

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
QualifiedTrackingNumber from the namespace http://fedex.com/ws/track/v9.

Tracking number and additional shipment data used to identify a unique shipment for proof of delivery.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * TrackingNumber


=item * ShipDate


=item * AccountNumber


=item * Carrier


=item * Destination




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::FedEx::WSDL::TrackTypes::QualifiedTrackingNumber
   TrackingNumber =>  $some_value, # string
   ShipDate =>  $some_value, # date
   AccountNumber =>  $some_value, # string
   Carrier => $some_value, # CarrierCodeType
   Destination =>  { # Shipment::FedEx::WSDL::TrackTypes::Address
     StreetLines =>  $some_value, # string
     City =>  $some_value, # string
     StateOrProvinceCode =>  $some_value, # string
     PostalCode =>  $some_value, # string
     UrbanizationCode =>  $some_value, # string
     CountryCode =>  $some_value, # string
     CountryName =>  $some_value, # string
     Residential =>  $some_value, # boolean
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
