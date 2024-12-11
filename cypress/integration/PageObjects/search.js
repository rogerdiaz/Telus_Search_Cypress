class search {
  getTopLinks() {
    return cy.get('nav[aria-label="top links"] ul li div a');
  }

  getRegionToggler() {
    return cy.get('[data-test="regionToggler"]');
  }

  getCurrentRegion() {
    return cy.get('li button[data-test="regionToggler"] span');
  }

  getRegionSelector() {
    return cy.get('div[data-test="regionSwitcherContainer"] ul li a');
  }

  getContactUsBtn(val) {
    return cy
      .get('div [data-testid="widget-links"] div a div span')
      .contains(val);
  }

  getGetFurtherHelpHereBtn(val) {
    return cy.get("div div div div div div p div a div").contains(val);
  }
  getExpediteYourRequestHereBtn(val) {
    return cy.get("div div span div div div div div p a").contains(val);
  }
  /**
   * To select between Small & Medium Business, Commercial or Partner Solutions
   *
   * @param   val Write the option to select
   * @returns Locator of the button
   */
  getSearchBtn() {
    return cy.get("button[id=search-button]");
  }
  getSearchTextField(value, placeholder) {
    cy.log(value);
    return cy.get('div input[placeholder="' + placeholder + '"]').type(value);
  }

  getDoSearchBtn() {
    return cy.get('div [aria-label="Search"]');
  }

  getSearchResult(value) {
    return cy.get("ul li a h2").should(($lis) => {
      expect($lis).to.contain(value);
    });
  }

  getCurrentUrl(val) {
    return cy.url().should(($lis) => {
      expect($lis).to.contain(val);
    });
  }
}
export default search;
