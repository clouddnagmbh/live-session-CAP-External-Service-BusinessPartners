using {API_BUSINESS_PARTNER as bupa} from './external/API_BUSINESS_PARTNER';

service BusinessService {
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
