sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"at/clouddna/businesspartnersexample/test/integration/pages/A_BusinessPartnerList",
	"at/clouddna/businesspartnersexample/test/integration/pages/A_BusinessPartnerObjectPage"
], function (JourneyRunner, A_BusinessPartnerList, A_BusinessPartnerObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('at/clouddna/businesspartnersexample') + '/test/flp.html#app-preview',
        pages: {
			onTheA_BusinessPartnerList: A_BusinessPartnerList,
			onTheA_BusinessPartnerObjectPage: A_BusinessPartnerObjectPage
        },
        async: true
    });

    return runner;
});

