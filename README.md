# Functional Testing on "Telus Search" with Cypress

## Validation of Search terms results on Telus Search

The following project is a test suite used to verify that the expected results can be obtained if certain queries are entered in Personal and Small & Medium Business Search experiences and to verify the path to reach a page in the footer.

This test cases are repeated in English and French for all the Canadian Regions so in order to create a random verification, you can turn on and off the regions/languages used for testing in the **search.feature** file by removing the name of the region you don't want to check from the English and French columns of the lists.

[![Watch the video](photos/test_case_execution.png)](photos/test_case_execution.mp4)

### Search Experience tests

There are 2 kinds of tests cases that are performed for both Personal and Small & Medium Business line of business in English and French.

**Note** that in this repo you can find an Excel file that contains the QA Project in which this automation was based on.

1. The first one is to verify if you can see the expected article when you enter any of the queries of the provided lists.

   **English queries**

   - complaint
   - dispute
   - CRTC
   - CCTS
   - commission
   - ombudsman

   For all the queries in English you should always see the article **"How to get additional help with your concern"**.

   **French queries**

   - plainte
   - différend
   - CRTC
   - CPRST
   - commission et ombudsman

   For all the queries in French you should always see the article **"Comment signaler votre problème existant"**.

2. The second one is to verify that if you open **"Contact Us"** in the footer, and then you scroll down in the new page and click on **"expedite your request here"** you will be redirected to the **"How to get additional help with your concern"** page.

### Regions

This is te list of the regions you can use in English and French languages:

            | region in French            | region in English           |
            | "Alberta"                   | "Alberta"                   |
            | "Colombie-Britannique"      | "British Columbia"          |
            | "Manitoba"                  | "Manitoba"                  |
            | "Nouveau-Brunswick"         | "New Brunswick"             |
            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
            | "Nouvelle-Écosse"           | "Nova Scotia"               |
            | "Nunavut"                   | "Nunavut"                   |
            | "Ontario"                   | "Ontario"                   |
            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
            | "Québec"                    | "Quebec"                    |
            | "Saskatchewan"              | "Saskatchewan"              |
            | "Yukon"                     | "Yukon"                     |

## How to install and run this repo

Let's download and install node.js from the official page.
In your bash profile add the variable path:

```console
export PATH=$PATH:/usr/local/bin
```

Open a terminal in the directory of the project and run the following to create a project with Package.json

```console
$ npm -i init
```

Now, let's install Cypress with the following command.

```console
$ npm install cypress --save-dev
```

In order to use Cucumber, we have to install the following things based on this link: https://github.com/badeball/cypress-cucumber-preprocessor

```console
$ npm install @badeball/cypress-cucumber-preprocessor
```

Just in case, verify that you have "@cypress/browserify-preprocessor": "latest" in your **package.json** file. If not, please add it.

<p align="center"><img alt="Welcome to Cypress" src="photos/package_json.png" width="500"></p>
Then, run the following command since "@cypress/browserify-preprocessor" couldn't be installed although you already installed Cucumber.

```console
$ npm install
```

So now, let's the action begin!
Run this command to open the Cypress Test Runner

```console
$ node_modules/.bin/cypress open
```

In this screen click on E2E Testing

<p align="center"><img alt="Welcome to Cypress" src="photos/Cypress_homepage.png" width="500"></p>

Then you will have to select the browser where the tests are going to run.
You can click on Chrome to start.

<p align="center"><img alt="Browser selection" src="photos/browser.png" width="500"></p>

In the following screen, you will see the test suites to run. You can select the one you want to try and it will start it's execution.

<p align="center"><img alt="Test suite selection" src="photos/Test_suite.png" width="500"></p>

At the left side you will see the list of test cases and the status of each one.

<p align="center"><img alt="Automation running" src="photos/Test_executions.png" width="500"></p>

## Programming structure used

So if you want to know more about the structure of the project and the technologies used in this project, I can tell you here...

### POM Modeling

POM Modeling is a programming structure where all the elements of a page and their actions are gathered in a class that you can reuse in all your test steps.

In the following diagram you can see the way I implemented POM modeling in this project

<p align="center"><img alt="POM Modeling" src="photos/POM_Modeling.png" width="500"></p>
In this case, searchStepDef.js consume the functions from the class search.js
search.js contains all the elements and actions that are going to be used for all the test cases.

### Cucumber

Cucumber is a tool to automate software tests by implementing the BDD methodology. So you basically are going to write a narrative flow for each test case and that will be executed in the runtime.

Here you can see one Cucumber test case.

<p align="center"><img alt="Automation running" src="photos/Cucumber_test.png" width="500"></p>
By using Given, When and Then I can call the functions from searchStepDef.js in the right order to execute a test. 
This is an easier way to understand what a test case is about.
