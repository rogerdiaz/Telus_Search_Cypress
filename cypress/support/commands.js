// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })

import search from "../integration/PageObjects/search";
const superNav = new search();

Cypress.Commands.add("regionSelector", (region, language, confirmationFr) => {
  //superNav.getRegionToggler().click({ force: true });
  superNav
    .getCurrentRegion()
    .invoke("attr", "aria-label")
    .then(function (value) {
      let togglerRegion = value;
      let re = "";
      cy.log(language);
      cy.log(togglerRegion);
      if (language == "EN") {
        re = "\n              Your current region is set to,\n              ";
      } else if (language == "FR") {
        re = "\n              Votre région est réglée à,\n              ";
      }
      togglerRegion = togglerRegion.replace(re, "");
      re = "\n            ";
      togglerRegion = togglerRegion.replace(re, "");
      if (togglerRegion != region) {
        cy.wait(4000);
        superNav.getRegionToggler().wait(4000).click({ force: true });
        cy.wait(1000);
        superNav
          .getRegionSelector()
          .contains(region)
          .wait(1000)
          .trigger("click");
        cy.wait(4000);
        superNav
          .getCurrentRegion()
          .invoke("attr", "aria-label")
          .then(function (value) {
            let togglerRegion = value;
            cy.log(togglerRegion);
            let re = "";
            if (language == "EN") {
              re =
                "\n              Your current region is set to,\n              ";
            } else if (language == "FR") {
              re = "\n              Votre région est réglée à,\n              ";
            }

            togglerRegion = togglerRegion.replace(re, "");
            re = "\n            ";
            togglerRegion = togglerRegion.replace(re, "");
            cy.log("region" + togglerRegion);
            cy.log("region" + region);
            if (language == "EN") {
              expect(togglerRegion.includes(region)).to.be.true;
            } else if (language == "FR") {
              cy.log("region" + togglerRegion);
              cy.log("region" + confirmationFr);
              expect(togglerRegion.includes(confirmationFr)).to.be.true;
            }
          });
      }
    });
});
