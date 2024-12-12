Feature: End to end Query results validation and footer links
    application Regression

    Consumer Search Test

    @ignore-this
    @Regression
    Scenario Outline: Scenario Outline name: Consumer Search complaint English

        # Go to www.telus.com
        Given I open Telus
        When I set the region to <region> 'EN' <region>
        # When I set the language to english
        # Use the global search in the top right corner
        When I search for 'complaint' with placeholder 'Search TELUS.com'
        Then You should always see the 'How to get additional help with your concern'
        Examples:
            | region                      |
#            | "Alberta"                   |
            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |

    @Regression
    Scenario Outline: Scenario Outline name: Consumer Search dispute English

        # Go to www.telus.com
        Given I open Telus
        When I set the region to <region> 'EN' <region>
        # When I set the language to english
        # Use the global search in the top right corner
        When I search for 'dispute' with placeholder 'Search TELUS.com'
        Then You should always see the 'How to get additional help with your concern'
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |

    @Regression
    Scenario Outline: Scenario Outline name: Consumer Search CRTC English

        # Go to www.telus.com
        Given I open Telus
        When I set the region to <region> 'EN' <region>
        # When I set the language to english
        # Use the global search in the top right corner
        When I search for 'CRTC' with placeholder 'Search TELUS.com'
        Then You should always see the 'How to get additional help with your concern'
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |

    @Regression
    Scenario Outline: Scenario Outline name: Consumer Search CCTS English
        # Go to www.telus.com
        Given I open Telus
        When I set the region to <region> 'EN' <region>
        # When I set the language to english
        # Use the global search in the top right corner
        When I search for 'CCTS' with placeholder 'Search TELUS.com'
        Then You should always see the 'How to get additional help with your concern'
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |

    @Regression
    Scenario Outline: Scenario Outline name: Consumer Search commission English
        # Go to www.telus.com
        Given I open Telus
        When I set the region to <region> 'EN' <region>
        # When I set the language to english
        # Use the global search in the top right corner
        When I search for 'commission' with placeholder 'Search TELUS.com'
        Then You should always see the 'How to get additional help with your concern'
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |

    @Regression
    @ignore-this
    Scenario Outline: Scenario Outline name: Consumer Search ombudsman English
        # Go to www.telus.com
        Given I open Telus
        When I set the region to <region> 'EN' <region>
        # When I set the language to english
        # Use the global search in the top right corner
        When I search for 'ombudsman' with placeholder 'Search TELUS.com'
        Then You should always see the 'How to get additional help with your concern'
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |


    @Regression
    Scenario Outline: Scenario Outline name: Consumer Search plainte in French
        # Go to www.telus.com/fr
        Given I open Telus FR
        When I set the region to <region> 'FR' <confirmationFr>
        # Use the global search in the top right corner
        # Search for these keywords
        When I search for 'plainte' with placeholder 'Rechercher sur TELUS'
        Then You should always see the 'Comment obtenir de l’aide additionnelle'
        Examples:
            | region              | confirmationFr                      |
#            | "Alberta"                   | "Alberta"                   |
#            | "Colombie-Britannique"      | "British Columbia"          |
#            | "Manitoba"                  | "Manitoba"                  |
#            | "Nouveau-Brunswick"         | "New Brunswick"             |
#            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
#            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
#            | "Nouvelle-Écosse"           | "Nova Scotia"               |
#            | "Nunavut"                   | "Nunavut"                   |
#            | "Ontario"                   | "Ontario"                   |
#            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
#            | "Québec"                    | "Quebec"                    |
#            | "Saskatchewan"              | "Saskatchewan"              |
#            | "Yukon"                     | "Yukon"                     |

    @Regression
    Scenario Outline: Scenario Outline name: Consumer Search différend French
        # Go to www.telus.com/fr
        Given I open Telus FR
        When I set the region to <region> 'FR' <confirmationFr>
        # Use the global search in the top right corner
        # Search for these keywords
        When I search for 'différend' with placeholder 'Rechercher sur TELUS'
        Then You should always see the 'Comment obtenir de l’aide additionnelle'
        Examples:
            | region              | confirmationFr                      |
#            | "Alberta"                   | "Alberta"                   |
#            | "Colombie-Britannique"      | "British Columbia"          |
#            | "Manitoba"                  | "Manitoba"                  |
#            | "Nouveau-Brunswick"         | "New Brunswick"             |
#            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
#            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
#            | "Nouvelle-Écosse"           | "Nova Scotia"               |
#            | "Nunavut"                   | "Nunavut"                   |
#            | "Ontario"                   | "Ontario"                   |
#            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
#            | "Québec"                    | "Quebec"                    |
#            | "Saskatchewan"              | "Saskatchewan"              |
#            | "Yukon"                     | "Yukon"                     |

    @Regression
    Scenario Outline: Scenario Outline name: Consumer Search CRTC French
        # Go to www.telus.com/fr
        Given I open Telus FR
        When I set the region to <region> 'FR' <confirmationFr>
        # Use the global search in the top right corner
        # Search for these keywords
        When I search for 'CRTC' with placeholder 'Rechercher sur TELUS'
        Then You should always see the 'Comment obtenir de l’aide additionnelle'
        Examples:
            | region              | confirmationFr                      |
#            | "Alberta"                   | "Alberta"                   |
#            | "Colombie-Britannique"      | "British Columbia"          |
#            | "Manitoba"                  | "Manitoba"                  |
#            | "Nouveau-Brunswick"         | "New Brunswick"             |
#            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
#            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
#            | "Nouvelle-Écosse"           | "Nova Scotia"               |
#            | "Nunavut"                   | "Nunavut"                   |
#            | "Ontario"                   | "Ontario"                   |
#            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
#            | "Québec"                    | "Quebec"                    |
#            | "Saskatchewan"              | "Saskatchewan"              |
#            | "Yukon"                     | "Yukon"                     |




    @Regression
    Scenario Outline: Scenario Outline name: Consumer Search CPRST French
        # Go to www.telus.com/fr
        Given I open Telus FR
        When I set the region to <region> 'FR' <confirmationFr>
        # Use the global search in the top right corner
        # Search for these keywords
        When I search for 'CPRST' with placeholder 'Rechercher sur TELUS'
        Then You should always see the 'Comment obtenir de l’aide additionnelle'
        Examples:
        Examples:
            | region              | confirmationFr                      |
#            | "Alberta"                   | "Alberta"                   |
#            | "Colombie-Britannique"      | "British Columbia"          |
#            | "Manitoba"                  | "Manitoba"                  |
#            | "Nouveau-Brunswick"         | "New Brunswick"             |
#            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
#            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
#            | "Nouvelle-Écosse"           | "Nova Scotia"               |
#            | "Nunavut"                   | "Nunavut"                   |
#            | "Ontario"                   | "Ontario"                   |
#            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
#            | "Québec"                    | "Quebec"                    |
#            | "Saskatchewan"              | "Saskatchewan"              |
#            | "Yukon"                     | "Yukon"                     |

    @Regression
    Scenario Outline: Scenario Outline name: Consumer Search commission et ombudsman French
        # Go to www.telus.com/fr
        Given I open Telus FR
        When I set the region to <region> 'FR' <confirmationFr>
        # Use the global search in the top right corner
        # Search for these keywords
        When I search for 'commission et ombudsman' with placeholder 'Rechercher sur TELUS'
        Then You should always see the 'Comment obtenir de l’aide additionnelle'
        Examples:
            | region              | confirmationFr                      |
#            | "Alberta"                   | "Alberta"                   |
#            | "Colombie-Britannique"      | "British Columbia"          |
#            | "Manitoba"                  | "Manitoba"                  |
#            | "Nouveau-Brunswick"         | "New Brunswick"             |
#            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
#            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
#            | "Nouvelle-Écosse"           | "Nova Scotia"               |
#            | "Nunavut"                   | "Nunavut"                   |
#            | "Ontario"                   | "Ontario"                   |
#            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
#            | "Québec"                    | "Quebec"                    |
#            | "Saskatchewan"              | "Saskatchewan"              |
#            | "Yukon"                     | "Yukon"                     |

    ##################
    ##################
    # B2B Search Test
    @Regression
    Scenario Outline: Scenario Outline name: B2B Search complaint English

        # Go to http://www.telus.com//business/small
        Given I open SMB
        When I set the region to <region> 'EN' <region>
        # When I set the language to english
        # Use the global search in the top right corner
        When I search for 'complaint' with placeholder 'Search TELUS business'
        Then You should always see the 'How to escalate your existing concern'
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |


    @Regression
    Scenario Outline: Scenario Outline name: B2B Search dispute English

        # Go to http://www.telus.com//business/small
        Given I open SMB
        When I set the region to <region> 'EN' <region>
        # When I set the language to english
        # Use the global search in the top right corner
        When I search for 'dispute' with placeholder 'Search TELUS business'
        Then You should always see the 'How to escalate your existing concern'
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |

    @Regression
    Scenario Outline: Scenario Outline name: B2B Search CRTC English

        # Go to http://www.telus.com//business/small
        Given I open SMB
        When I set the region to <region> 'EN' <region>
        # When I set the language to english
        # Use the global search in the top right corner
        When I search for 'CRTC' with placeholder 'Search TELUS business'
        Then You should always see the 'How to escalate your existing concern'
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |


    @Regression
    Scenario Outline: Scenario Outline name: B2B Search CCTS English

        # Go to http://www.telus.com//business/small
        Given I open SMB
        When I set the region to <region> 'EN' <region>
        # When I set the language to english
        # Use the global search in the top right corner
        When I search for 'CCTS' with placeholder 'Search TELUS business'
        Then You should always see the 'How to escalate your existing concern'
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |

    @Regression
    Scenario Outline: Scenario Outline name: B2B Search commission English

        # Go to http://www.telus.com//business/small
        Given I open SMB
        When I set the region to <region> 'EN' <region>
        # When I set the language to english
        # Use the global search in the top right corner
        When I search for 'commission' with placeholder 'Search TELUS business'
        Then You should always see the 'How to escalate your existing concern'
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |

    @Regression
    Scenario Outline: Scenario Outline name: B2B Search ombudsman English

        # Go to http://www.telus.com//business/small
        Given I open SMB
        When I set the region to <region> 'EN' <region>
        # When I set the language to english
        # Use the global search in the top right corner
        When I search for 'ombudsman' with placeholder 'Search TELUS business'
        Then You should always see the 'How to escalate your existing concern'
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |

    @Regression
    Scenario Outline: Scenario Outline name: B2B Search plainte French
        # Go to www.telus.com/fr
        Given I open B2BFR
        When I set the region to <region> 'FR' <confirmationFr>
        # Use the global search in the top right corner
        # Search for these keywords
        When I search for 'plainte' with placeholder 'Rechercher sur TELUS Affaires'
        Then You should always see the 'Comment signaler votre problème existant'
        Examples:
            | region              | confirmationFr                      |
#            | "Alberta"                   | "Alberta"                   |
#            | "Colombie-Britannique"      | "British Columbia"          |
#            | "Manitoba"                  | "Manitoba"                  |
#            | "Nouveau-Brunswick"         | "New Brunswick"             |
#            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
#            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
#            | "Nouvelle-Écosse"           | "Nova Scotia"               |
#            | "Nunavut"                   | "Nunavut"                   |
#            | "Ontario"                   | "Ontario"                   |
#            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
#            | "Québec"                    | "Quebec"                    |
#            | "Saskatchewan"              | "Saskatchewan"              |
#            | "Yukon"                     | "Yukon"                     |



    # différend
    @Regression
    Scenario Outline: Scenario Outline name: B2B Search différend French
        # Go to www.telus.com/fr
        Given I open B2BFR
        When I set the region to <region> 'FR' <confirmationFr>
        # Use the global search in the top right corner
        # Search for these keywords
        When I search for 'différend' with placeholder 'Rechercher sur TELUS Affaires'
        Then You should always see the 'Comment signaler votre problème existant'
        Examples:
            | region              | confirmationFr                      |
#            | "Alberta"                   | "Alberta"                   |
#            | "Colombie-Britannique"      | "British Columbia"          |
#            | "Manitoba"                  | "Manitoba"                  |
#            | "Nouveau-Brunswick"         | "New Brunswick"             |
#            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
#            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
#            | "Nouvelle-Écosse"           | "Nova Scotia"               |
#            | "Nunavut"                   | "Nunavut"                   |
#            | "Ontario"                   | "Ontario"                   |
#            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
#            | "Québec"                    | "Quebec"                    |
#            | "Saskatchewan"              | "Saskatchewan"              |
#            | "Yukon"                     | "Yukon"                     |


    # CRTC
    @Regression
    Scenario Outline: Scenario Outline name: B2B Search CRTC French
        # Go to www.telus.com/fr
        Given I open B2BFR
        When I set the region to <region> 'FR' <confirmationFr>
        # Use the global search in the top right corner
        # Search for these keywords
        When I search for 'CRTC' with placeholder 'Rechercher sur TELUS Affaires'
        Then You should always see the 'Comment signaler votre problème existant'
        Examples:
            | region              | confirmationFr                      |
#            | "Alberta"                   | "Alberta"                   |
#            | "Colombie-Britannique"      | "British Columbia"          |
#            | "Manitoba"                  | "Manitoba"                  |
#            | "Nouveau-Brunswick"         | "New Brunswick"             |
#            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
#            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
#            | "Nouvelle-Écosse"           | "Nova Scotia"               |
#            | "Nunavut"                   | "Nunavut"                   |
#            | "Ontario"                   | "Ontario"                   |
#            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
#            | "Québec"                    | "Quebec"                    |
#            | "Saskatchewan"              | "Saskatchewan"              |
#            | "Yukon"                     | "Yukon"                     |


    # CPRST
    @Regression
    Scenario Outline: Scenario Outline name: B2B Search CPRST French
        # Go to www.telus.com/fr
        Given I open B2BFR
        When I set the region to <region> 'FR' <confirmationFr>
        # Use the global search in the top right corner
        # Search for these keywords
        When I search for 'CPRST' with placeholder 'Rechercher sur TELUS Affaires'
        Then You should always see the 'Comment signaler votre problème existant'
        Examples:
            | region              | confirmationFr                      |
#            | "Alberta"                   | "Alberta"                   |
#            | "Colombie-Britannique"      | "British Columbia"          |
#            | "Manitoba"                  | "Manitoba"                  |
#            | "Nouveau-Brunswick"         | "New Brunswick"             |
#            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
#            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
#            | "Nouvelle-Écosse"           | "Nova Scotia"               |
#            | "Nunavut"                   | "Nunavut"                   |
#            | "Ontario"                   | "Ontario"                   |
#            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
#            | "Québec"                    | "Quebec"                    |
#            | "Saskatchewan"              | "Saskatchewan"              |
#            | "Yukon"                     | "Yukon"                     |


    # commission et ombudsman
    @Regression
    Scenario Outline: Scenario Outline name: B2B Search commission et ombudsman French
        # Go to www.telus.com/fr
        Given I open B2BFR
        When I set the region to <region> 'FR' <confirmationFr>
        # Use the global search in the top right corner
        # Search for these keywords
        When I search for 'commission et ombudsman' with placeholder 'Rechercher sur TELUS Affaires'
        Then You should always see the 'Comment signaler votre problème existant'
        Examples:
            | region              | confirmationFr                      |
#            | "Alberta"                   | "Alberta"                   |
#            | "Colombie-Britannique"      | "British Columbia"          |
#            | "Manitoba"                  | "Manitoba"                  |
#            | "Nouveau-Brunswick"         | "New Brunswick"             |
#            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
#            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
#            | "Nouvelle-Écosse"           | "Nova Scotia"               |
#            | "Nunavut"                   | "Nunavut"                   |
#            | "Ontario"                   | "Ontario"                   |
#            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
#            | "Québec"                    | "Quebec"                    |
#            | "Saskatchewan"              | "Saskatchewan"              |
#            | "Yukon"                     | "Yukon"                     |




    # Consumer Navigation Test
    # Go to www.telus.com
    # Go to the footer and click on Contact Us
    # On the Contact Us page, scroll to the bottom and click on “get further help here”
    # This should open up the “How to get additional help with your concern” / “Comment obtenir de l’aide additionnelle” page
    # Repeat for all provinces, for both EN and FR.
    @Regression
    Scenario Outline: Scenario Outline name: How to get additional help with your concern page from footer English

        Given I open Telus
        When I set the region to <region> 'EN' <region>
        When I scroll to the bottom
        When I click Contact Us in footer
        When I scroll to the bottom
        When I click get further help here
        Then I get How to get additional help with your concern page
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |

    # Consumer Navigation Test
    # Go to www.telus.com
    # Go to the footer and click on Contact Us
    # On the Contact Us page, scroll to the bottom and click on “get further help here”
    # This should open up the “How to get additional help with your concern” / “Comment obtenir de l’aide additionnelle” page
    # Repeat for all provinces, for both EN and FR.
    @Regression
    Scenario Outline: Scenario Outline name: Comment obtenir de l’aide additionnelle from footer French
        # Go to www.telus.com/fr
        Given I open Telus FR
        When I set the region to <region> 'FR' <confirmationFr>
        When I scroll to the bottom
        When I click Nous joindre in footer
        When I scroll to the bottom
        When I click ici
        Then I get Comment obtenir de l’aide additionnelle page
        Examples:
            | region              | confirmationFr                      |
#            | "Alberta"                   | "Alberta"                   |
#            | "Colombie-Britannique"      | "British Columbia"          |
#            | "Manitoba"                  | "Manitoba"                  |
#            | "Nouveau-Brunswick"         | "New Brunswick"             |
#            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
#            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
#            | "Nouvelle-Écosse"           | "Nova Scotia"               |
#            | "Nunavut"                   | "Nunavut"                   |
#            | "Ontario"                   | "Ontario"                   |
#            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
#            | "Québec"                    | "Quebec"                    |
#            | "Saskatchewan"              | "Saskatchewan"              |
#            | "Yukon"                     | "Yukon"                     |

    # B2b Navigation Test

    # Go to the footer and click on Contact Us
    # On the Contact Us page, scroll to the bottom and click on “expedite your request here”
    # This should open up the “How to escalate your existing concern” / “Comment signaler votre problème existant” page
    # Repeat for all provinces, for both EN and FR.

    @Regression
    Scenario Outline: Scenario Outline name: B2B How to escalate your existing concern from footer English

        # Go to http://www.telus.com//business/small
        Given I open SMB
        When I set the region to <region> 'EN' <region>
        When I scroll to the bottom
        When I click Contact Us in footer
        When I scroll to the bottom
        When I click expedite your request here
        Then I get How to escalate your existing concern page
        Examples:
            | region                      |
#            | "Alberta"                   |
#            | "British Columbia"          |
#            | "Manitoba"                  |
#            | "New Brunswick"             |
#            | "Newfoundland and Labrador" |
#            | "Northwest Territories"     |
#            | "Nova Scotia"               |
#            | "Nunavut"                   |
#            | "Ontario"                   |
#            | "Prince Edward Island"      |
#            | "Quebec"                    |
#            | "Saskatchewan"              |
#            | "Yukon"                     |



    # B2b Navigation Test

    # Go to the footer and click on Contact Us
    # On the Contact Us page, scroll to the bottom and click on “expedite your request here”
    # This should open up the “How to escalate your existing concern” / “Comment signaler votre problème existant” page
    # Repeat for all provinces, for both EN and FR.
    @Regression
    Scenario Outline: Scenario Outline name: Comment obtenir de l’aide additionnelle from footer French
        # Go to www.telus.com/fr
        Given I open B2BFR
        When I set the region to <region> 'FR' <confirmationFr>
        When I scroll to the bottom
        When I click Nous joindre in footer
        When I scroll to the bottom
        When I click accélérez votre demande ici
        Then I get Comment signaler votre problème existant page
        Examples:
            | region              | confirmationFr                      |
#            | "Alberta"                   | "Alberta"                   |
#            | "Colombie-Britannique"      | "British Columbia"          |
#            | "Manitoba"                  | "Manitoba"                  |
#            | "Nouveau-Brunswick"         | "New Brunswick"             |
#            | "Terre-Neuve-et-Labrador"   | "Newfoundland and Labrador" |
#            | "Territoires du Nord-Ouest" | "Northwest Territories"     |
#            | "Nouvelle-Écosse"           | "Nova Scotia"               |
#            | "Nunavut"                   | "Nunavut"                   |
#            | "Ontario"                   | "Ontario"                   |
#            | "Île-du-Prince-Édouard"     | "Prince Edward Island"      |
#            | "Québec"                    | "Quebec"                    |
#            | "Saskatchewan"              | "Saskatchewan"              |
#            | "Yukon"                     | "Yukon"                     |
