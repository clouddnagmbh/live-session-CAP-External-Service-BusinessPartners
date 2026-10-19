using {API_BUSINESS_PARTNER as bupa} from './external/API_BUSINESS_PARTNER';

service BusinessService {
    // Read-only, and no free-text search: the remote OData V2 API rejects $search
    @readonly
    @Capabilities.SearchRestrictions.Searchable: false
    entity A_BusinessPartner as
        projection on bupa.A_BusinessPartner {
            key BusinessPartner,
                Customer,
                BusinessPartnerFullName,
                BusinessPartnerGrouping,
                BusinessPartnerUUID,
                OrganizationBPName1
        };
};
