package Shipment::UPS::WSDL::RateTypes::ChargesType;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.ups.com/XMLSchema/XOLTWS/Rate/v1.1' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %CurrencyCode_of :ATTR(:get<CurrencyCode>);
my %MonetaryValue_of :ATTR(:get<MonetaryValue>);

__PACKAGE__->_factory(
    [ qw(        CurrencyCode
        MonetaryValue

    ) ],
    {
        'CurrencyCode' => \%CurrencyCode_of,
        'MonetaryValue' => \%MonetaryValue_of,
    },
    {
        'CurrencyCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'MonetaryValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'CurrencyCode' => 'CurrencyCode',
        'MonetaryValue' => 'MonetaryValue',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::UPS::WSDL::RateTypes::ChargesType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ChargesType from the namespace http://www.ups.com/XMLSchema/XOLTWS/Rate/v1.1.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * CurrencyCode (min/maxOccurs: 1/1)


=item * MonetaryValue (min/maxOccurs: 1/1)




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::UPS::WSDL::RateTypes::ChargesType
   CurrencyCode =>  $some_value, # string
   MonetaryValue =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
