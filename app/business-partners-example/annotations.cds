using BusinessService as service from '../../srv/service';
annotate service.A_BusinessPartner with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartner',
                Value : BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Customer',
                Value : Customer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerFullName',
                Value : BusinessPartnerFullName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerGrouping',
                Value : BusinessPartnerGrouping,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrganizationBPName1',
                Value : OrganizationBPName1,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartner',
            Value : BusinessPartner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Customer',
            Value : Customer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartnerFullName',
            Value : BusinessPartnerFullName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartnerGrouping',
            Value : BusinessPartnerGrouping,
        },
        {
            $Type : 'UI.DataField',
            Label : 'OrganizationBPName1',
            Value : OrganizationBPName1,
        },
    ],
);

