package Shipment::FedEx::WSDL::RateTypes::DangerousGoodsDetail;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://fedex.com/ws/rate/v9' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Accessibility_of :ATTR(:get<Accessibility>);
my %CargoAircraftOnly_of :ATTR(:get<CargoAircraftOnly>);
my %Options_of :ATTR(:get<Options>);
my %HazardousCommodities_of :ATTR(:get<HazardousCommodities>);
my %Packaging_of :ATTR(:get<Packaging>);
my %EmergencyContactNumber_of :ATTR(:get<EmergencyContactNumber>);

__PACKAGE__->_factory(
    [ qw(        Accessibility
        CargoAircraftOnly
        Options
        HazardousCommodities
        Packaging
        EmergencyContactNumber

    ) ],
    {
        'Accessibility' => \%Accessibility_of,
        'CargoAircraftOnly' => \%CargoAircraftOnly_of,
        'Options' => \%Options_of,
        'HazardousCommodities' => \%HazardousCommodities_of,
        'Packaging' => \%Packaging_of,
        'EmergencyContactNumber' => \%EmergencyContactNumber_of,
    },
    {
        'Accessibility' => 'Shipment::FedEx::WSDL::RateTypes::DangerousGoodsAccessibilityType',
        'CargoAircraftOnly' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'Options' => 'Shipment::FedEx::WSDL::RateTypes::HazardousCommodityOptionType',
        'HazardousCommodities' => 'Shipment::FedEx::WSDL::RateTypes::HazardousCommodityContent',
        'Packaging' => 'Shipment::FedEx::WSDL::RateTypes::HazardousCommodityPackagingDetail',
        'EmergencyContactNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'Accessibility' => 'Accessibility',
        'CargoAircraftOnly' => 'CargoAircraftOnly',
        'Options' => 'Options',
        'HazardousCommodities' => 'HazardousCommodities',
        'Packaging' => 'Packaging',
        'EmergencyContactNumber' => 'EmergencyContactNumber',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::FedEx::WSDL::RateTypes::DangerousGoodsDetail

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
DangerousGoodsDetail from the namespace http://fedex.com/ws/rate/v9.

The descriptive data required for a FedEx shipment containing dangerous goods (hazardous materials).




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Accessibility (min/maxOccurs: 0/1)


=item * CargoAircraftOnly (min/maxOccurs: 0/1)


=item * Options (min/maxOccurs: 0/unbounded)


=item * HazardousCommodities (min/maxOccurs: 0/unbounded)


=item * Packaging (min/maxOccurs: 0/1)


=item * EmergencyContactNumber (min/maxOccurs: 0/1)




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::FedEx::WSDL::RateTypes::DangerousGoodsDetail
   Accessibility => $some_value, # DangerousGoodsAccessibilityType
   CargoAircraftOnly =>  $some_value, # boolean
   Options => $some_value, # HazardousCommodityOptionType
   HazardousCommodities =>  { # Shipment::FedEx::WSDL::RateTypes::HazardousCommodityContent
     Description =>  { # Shipment::FedEx::WSDL::RateTypes::HazardousCommodityDescription
       Id =>  $some_value, # string
       PackingGroup => $some_value, # HazardousCommodityPackingGroupType
       ProperShippingName =>  $some_value, # string
       TechnicalName =>  $some_value, # string
       HazardClass =>  $some_value, # string
       SubsidiaryClasses =>  $some_value, # string
       LabelText =>  $some_value, # string
     },
     Quantity =>  { # Shipment::FedEx::WSDL::RateTypes::HazardousCommodityQuantityDetail
       Amount =>  $some_value, # decimal
       Units =>  $some_value, # string
     },
     Options =>  { # Shipment::FedEx::WSDL::RateTypes::HazardousCommodityOptionDetail
       LabelTextOption => $some_value, # HazardousCommodityLabelTextOptionType
       CustomerSuppliedLabelText =>  $some_value, # string
     },
   },
   Packaging =>  { # Shipment::FedEx::WSDL::RateTypes::HazardousCommodityPackagingDetail
     Count =>  $some_value, # nonNegativeInteger
     Units =>  $some_value, # string
   },
   EmergencyContactNumber =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
