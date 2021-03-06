
package Shipment::UPS::WSDL::RateElements::Response;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.ups.com/XMLSchema/XOLTWS/Common/v1.0' }

__PACKAGE__->__set_name('Response');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();
use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    Shipment::UPS::WSDL::RateTypes::ResponseType
);

}

1;


=pod

=head1 NAME

Shipment::UPS::WSDL::RateElements::Response

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
Response from the namespace http://www.ups.com/XMLSchema/XOLTWS/Common/v1.0.







=head1 METHODS

=head2 new

 my $element = Shipment::UPS::WSDL::RateElements::Response->new($data);

Constructor. The following data structure may be passed to new():

 { # Shipment::UPS::WSDL::RateTypes::ResponseType
   ResponseStatus =>  { # Shipment::UPS::WSDL::RateTypes::CodeDescriptionType
     Code =>  $some_value, # string
     Description =>  $some_value, # string
   },
   Alert => {}, # Shipment::UPS::WSDL::RateTypes::CodeDescriptionType
   TransactionReference =>  { # Shipment::UPS::WSDL::RateTypes::TransactionReferenceType
     CustomerContext =>  $some_value, # string
     TransactionIdentifier =>  $some_value, # string
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

