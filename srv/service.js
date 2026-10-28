import cds from '@sap/cds';

export class BusinessService extends cds.ApplicationService {
    async init() {
        const bupa = await cds.connect.to('API_BUSINESS_PARTNER');

        this.on('READ', 'A_BusinessPartner', async (req) => {
            return bupa.run(req.query);
        });

        return super.init();
    }
}
