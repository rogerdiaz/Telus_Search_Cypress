const { defineConfig } = require("cypress");
const browserify = require("@cypress/browserify-preprocessor");
const {
  addCucumberPreprocessorPlugin,
} = require("@badeball/cypress-cucumber-preprocessor");
const {
  preprendTransformerToOptions,
} = require("@badeball/cypress-cucumber-preprocessor/browserify");

async function setupNodeEvents(on, config) {
  // This is required for the preprocessor to be able to generate JSON reports after each run, and more,
  await addCucumberPreprocessorPlugin(on, config);

  on(
    "file:preprocessor",
    browserify(preprendTransformerToOptions(config, browserify.defaultOptions))
  );
  // Make sure to return the config object as it might have been modified by the plugin.
  return config;
}

module.exports = defineConfig({
  chromeWebSecurity: false,
  viewportWidth: 1400,
  viewportHeight: 1660,
  defaultCommandTimeout: 80000,
  taskTimeout: 80000,
  pageLoadTimeout: 80000,

  env: {
    url: "https://www.telus.com/en",
    urlF: "https://www.telus.com/fr?linkname=Particuliers&linktype=ge-supernav",
    B2B: "http://www.telus.com/business/small",
    B2BFR: "http://www.telus.com/fr/business/small",
  },
  e2e: {
    setupNodeEvents,
    specPattern: "cypress/integration/BDD/*.feature",
    experimentalMemoryManagement: true,
    numTestsKeptInMemory: 0,
  },
});
