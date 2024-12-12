import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import search from "../../PageObjects/search";
const pSearch = new search();

Given("I open Telus", () => {
  cy.visit(Cypress.env("url"));
  pSearch.getTopLinks().should("contain", "Personal");
});

Given("I open Telus FR", () => {
  cy.visit(Cypress.env("urlF"));

  pSearch.getTopLinks().should("contain", "Particuliers");
});

Given("I open SMB", () => {
  cy.visit(Cypress.env("B2B"));
  pSearch.getTopLinks().should("contain", "Small & Medium Business");
});

Given("I open B2BFR", () => {
  cy.visit(Cypress.env("B2BFR"));
  cy.reload();
  pSearch.getTopLinks().should("contain", "Petites et moyennes entreprises");
});

When(
  "I set the region to {string} {string} {string}",
  (region, language, confirmationFr) => {
    cy.wait(4000).regionSelector(region, language, confirmationFr);
  }
);

When("I search for {string} with placeholder {string}", (arg1, arg2) => {
  pSearch.getSearchBtn().click({ force: true });
  //let val = arg
  pSearch.getSearchTextField(arg1, arg2);
  pSearch.getDoSearchBtn().click({ multiple: true });
});
When("I scroll to the bottom", () => {
  cy.scrollTo("bottom");
});

When("I click Contact Us in footer", () => {
  pSearch.getContactUsBtn("Contact us").dblclick({ force: true });
});

When("I click Nous joindre in footer", () => {
  pSearch.getContactUsBtn("Nous joindre").dblclick({ force: true });
});

When("I click get further help here", () => {
  pSearch
    .getGetFurtherHelpHereBtn("get further help here")
    .click({ force: true });
});

When("I click expedite your request here", () => {
  pSearch
    .getExpediteYourRequestHereBtn("expedite your request here")
    .click({ force: true });
});

When("I click ici", () => {
  pSearch.getGetFurtherHelpHereBtn("ici").click({ force: true });
});
///////
When("I click accélérez votre demande ici", () => {
  pSearch
    .getExpediteYourRequestHereBtn("accélérez votre demande ici")
    .click({ force: true });
});

Then("You should always see the {string}", (arg) => {
  //pSearch.getSearchResult.should('have.attr', 'href', 'https://www.telus.com/en/support/article/resolve-a-concern?intcmp=tcom_personal_search_1_page_cta_how_to_get_additional_help_with_your_concern&linkName=search_result_complaint_all_vertical&linkPosition=search_result_1')
  pSearch.getSearchResult(arg); //.then(() => {
  //    cy.visit(Cypress.env("url"))
  //  cy.wait(5000)
});

Then("I get How to get additional help with your concern page", () => {
  pSearch.getCurrentUrl(
    "https://www.telus.com/en/support/article/resolve-a-concern?INTCMP=Tcom_contactus_to_mgt_callback"
  );
});

Then("I get Comment obtenir de l’aide additionnelle page", () => {
  pSearch.getCurrentUrl(
    "https://www.telus.com/fr/support/article/resolve-a-concern?INTCMP=Tcom_contactus_to_mgt_callback"
  );
});

Then("I get How to escalate your existing concern page", () => {
  pSearch.getCurrentUrl(
    "https://www.telus.com/en/business/support/article/escalate-business-concern?INTCMP=tbs_contact-telus-business_link_learn-more-about-other-options"
  );
});

Then("I get Comment signaler votre problème existant page", () => {
  pSearch.getCurrentUrl(
    "https://www.telus.com/fr/business/support/article/escalate-business-concern?INTCMP=tbs_contact-telus-business_link_learn-more-about-other-options"
  );
});
