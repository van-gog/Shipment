
package Shipment::Purolator::WSDL::Elements::GetQuickEstimateRequest;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://purolator.com/pws/datatypes/v1' }

__PACKAGE__->__set_name('GetQuickEstimateRequest');
__PACKAGE__->__set_nillable(1);
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();
use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    Shipment::Purolator::WSDL::Types::GetQuickEstimateRequestContainer
);

}

1;


=pod

=head1 NAME

Shipment::Purolator::WSDL::Elements::GetQuickEstimateRequest

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
GetQuickEstimateRequest from the namespace http://purolator.com/pws/datatypes/v1.







=head1 METHODS

=head2 new

 my $element = Shipment::Purolator::WSDL::Elements::GetQuickEstimateRequest->new($data);

Constructor. The following data structure may be passed to new():

 { # Shipment::Purolator::WSDL::Types::GetQuickEstimateRequestContainer
   BillingAccountNumber =>  $some_value, # string
   SenderPostalCode =>  $some_value, # string
   ReceiverAddress =>  { # Shipment::Purolator::WSDL::Types::ShortAddress
     City =>  $some_value, # string
     Province =>  $some_value, # string
     Country =>  $some_value, # string
     PostalCode =>  $some_value, # string
   },
   PackageType =>  $some_value, # string
   TotalWeight =>  { # Shipment::Purolator::WSDL::Types::TotalWeight
     Value =>  $some_value, # int
     WeightUnit => $some_value, # WeightUnit
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

