Config = Config or {}

Config.OnlyShowOnDuty = true

-- RECOMMENDED Fivemerr Images. DOES NOT EXPIRE. 
-- YOU NEED TO SET THIS UP FOLLOW INSTRUCTIONS BELOW.
-- Documents: https://docs.fivemerr.com/integrations/mdt-scripts/ps-mdt
Config.FivemerrMugShot = true

-- Discord webhook for images. NOT RECOMMENDED, IMAGES EXPIRE.
Config.MugShotWebhook = false
Config.UseCQCMugshot = true

-- Front, Back Side. Use 4 for both sides, we recommend leaving at 1 for default.
Config.MugPhotos = 1

-- If set to true = Fine gets automatically removed from bank automatically charging the player.
-- If set to false = The fine gets sent as an Invoice to their phone and it us to the player to pay for it, can remain unpaid and ignored.
Config.BillVariation = false

-- If set to false (default) = The fine amount is just being removed from the player's bank account
-- If set to true = The fine amount is beeing added to the society account after being removed from the player's bank account
Config.QBBankingUse = true

-- Set up your inventory to automatically retrieve images when a weapon is registered at a weapon shop or self-registered.
-- If you're utilizing lj-inventory's latest version from GitHub, no further modifications are necessary. 
-- However, if you're using a different inventory system, please refer to the "Inventory Edit | Automatic Add Weapons with images" section in ps-mdt's README.
Config.InventoryForWeaponsImages = "qb-inventory"

-- Only compatible with ox_inventory
Config.RegisterWeaponsAutomatically = true

-- Set to true to register all weapons that are added via AddItem in ox_inventory
Config.RegisterCreatedWeapons = true

-- "LegacyFuel", "lj-fuel", "ps-fuel"
Config.Fuel = "cdn-fuel"

-- Google Docs Link
Config.sopLink = {
    ['police'] = '',
    ['ambulance'] = '',
    ['bcso'] = '',
    ['doj'] = '',
    ['sast'] = '',
    ['sasp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',
}

-- Google Docs Link
Config.RosterLink = {
    ['police'] = '',
    ['ambulance'] = '',
    ['bcso'] = '',
    ['doj'] = '',
    ['sast'] = '',
    ['sasp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',	
}

Config.PoliceJobs = {
    ['police'] = true,
    ['lspd'] = false,
    ['bcso'] = false,
    ['sast'] = false,
    ['sasp'] = false,
    ['doc'] = false,
    ['lssd'] = false,
    ['sapr'] = false,
    ['pa'] = false
}

Config.AmbulanceJobs = {
    ['ambulance'] = true,
    ['doctor'] = false
}

Config.DojJobs = {
    ['lawyer'] = true,
    ['judge'] = true
}

-- This is a workaround solution because the qb-menu present in qb-policejob fills in an impound location and sends it to the event. 
-- If the impound locations are modified in qb-policejob, the changes must also be implemented here to ensure consistency.

Config.ImpoundLocations = {
    [1] = vector4(436.68, -1007.42, 27.32, 180.0),
    [2] = vector4(435.36, -1014.65, 28.73, 180.93),     -- Gabz
}

-- Support for Wraith ARS 2X. 

Config.UseWolfknightRadar = false
Config.WolfknightNotifyTime = 5000 -- How long the notification displays for in milliseconds (30000 = 30 seconds)
Config.PlateScanForDriversLicense = false -- If true, plate scanner will check if the owner of the scanned vehicle has a drivers license

-- IMPORTANT: To avoid making excessive database queries, modify this config to true 'CONFIG.use_sonorancad = true' setting in the configuration file located at 'wk_wars2x/config.lua'. 
-- Enabling this setting will limit plate checks to only those vehicles that have been used by a player.

Config.LogPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveIncidentPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveReportPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveWeaponsPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.PenalCodeTitles = {
	[1] = 'INFRACTIONS CONTRE LES PERSONNES',
	[2] = 'INFRACTIONS LIÉES AU VOL',
	[3] = 'INFRACTIONS LIÉES À LA FRAUDE',
	[4] = 'INFRACTIONS LIÉES AUX DOMMAGES AUX BIENS',
	[5] = 'INFRACTIONS CONTRE L\'ADMINISTRATION PUBLIQUE',
	[6] = 'INFRACTIONS CONTRE L\'ORDRE PUBLIC',
	[7] = 'INFRACTIONS CONTRE LA SANTÉ ET LES MŒURS',
	[8] = 'INFRACTIONS CONTRE LA SÉCURITÉ PUBLIQUE',
	[9] = 'INFRACTIONS LIÉES À LA CIRCULATION ROUTIÈRE',
	[10] = 'INFRACTIONS LIÉES AU BIEN-ÊTRE DE LA FAUNE SAUVAGE',

}

Config.PenalCode = {
    [1] = {
	[1] = {title = 'Voies de fait simples', class = 'Misdemeanor', id = 'P.C. 1001', months = 7, fine = 500, color = 'green', description = "Lorsqu'une personne cause intentionnellement ou sciemment un contact physique avec une autre (sans arme)"},
	[2] = {title = 'Agression', class = 'Misdemeanor', id = 'P.C. 1002', months = 15, fine = 850, color = 'orange', description = 'Si une personne cause intentionnellement ou sciemment des blessures à une autre (sans arme)'},
	[3] = {title = 'Agression aggravée', class = 'Felony', id = 'P.C. 1003', months = 20, fine = 1250, color = 'orange', description = 'Lorsqu\'une personne, de manière non intentionnelle et téméraire, cause des lésions corporelles à une autre à la suite d\'une confrontation ET cause des lésions corporelles'},
	[4] = {title = 'Agression avec arme mortelle', class = 'Felony', id = 'P.C. 1004', months = 30, fine = 3750, color = 'red', description = 'Lorsqu\'une personne cause intentionnellement, sciemment ou témérairement des lésions corporelles à une autre personne ET provoque soit des lésions corporelles graves, soit utilise ou exhibe une arme mortelle'},
	[5] = {title = 'Homicide involontaire', class = 'Felony', id = 'P.C. 1005', months = 60, fine = 7500, color = 'red', description = 'Lorsqu\'une personne cause involontairement et témérairement la mort d\'une autre'},
	[6] = {title = 'Homicide par véhicule', class = 'Felony', id = 'P.C. 1006', months = 75, fine = 7500, color = 'red', description = 'Lorsqu\'une personne cause involontairement et témérairement la mort d\'une autre avec un véhicule'},
	[7] = {title = 'Tentative de meurtre d\'un civil', class = 'Felony', id = 'P.C. 1007', months = 50, fine = 7500, color = 'red', description = 'Lorsqu\'une personne non gouvernementale attaque intentionnellement une autre avec l\'intention de tuer'},
	[8] = {title = 'Meurtre au deuxième degré', class = 'Felony', id = 'P.C. 1008', months = 100, fine = 15000, color = 'red', description = 'Tout meurtre intentionnel qui n\'est pas prémédité ou planifié. Une situation dans laquelle le tueur a l\'intention d\'infliger uniquement des lésions corporelles graves.'},
	[9] = {title = 'Complice de meurtre au deuxième degré', class = 'Felony', id = 'P.C. 1009', months = 50, fine = 5000, color = 'red', description = 'Être présent et/ou participer à l\'acte parent'},
	[10] = {title = 'Meurtre au premier degré', class = 'Felony', id = 'P.C. 1010', months = 0, fine = 0, color = 'red', description = 'Tout meurtre intentionnel qui est délibéré et prémédité avec malveillance.'},
	[11] = {title = 'Complice de meurtre au premier degré', class = 'Felony', id = 'P.C. 1011', months = 0, fine = 0, color = 'red', description = 'Être présent et/ou participer à l\'acte parent'},
	[12] = {title = 'Meurtre d\'un fonctionnaire public ou d\'un agent de la paix', class = 'Felony', id = 'P.C. 1012', months = 0, fine = 0, color = 'red', description = 'Tout meurtre intentionnel commis contre un employé du gouvernement'},
	[13] = {title = 'Tentative de meurtre d\'un fonctionnaire public ou d\'un agent de la paix', class = 'Felony', id = 'P.C. 1013', months = 65, fine = 10000, color = 'red', description = 'Toutes attaques commises contre un employé du gouvernement avec l\'intention de causer la mort'},
	[14] = {title = 'Complice du meurtre d\'un fonctionnaire public ou d\'un agent de la paix', class = 'Felony', id = 'P.C. 1014', months = 0, fine = 0, color = 'red', description = 'Être présent et/ou participer à l\'acte parent'},
	[15] = {title = 'Emprisonnement illégal', class = 'Misdemeanor', id = 'P.C. 1015', months = 10, fine = 600, color = 'green', description = 'L\'acte de prendre une autre personne contre sa volonté et de la retenir pendant une période prolongée'},
	[16] = {title = 'Enlèvement', class = 'Felony', id = 'P.C. 1016', months = 15, fine = 900, color = 'orange', description = 'L\'acte de prendre une autre personne contre sa volonté pendant une courte période'},
	[17] = {title = 'Complice d\'enlèvement', class = 'Felony', id = 'P.C. 1017', months = 7, fine = 450, color = 'orange', description = 'Être présent et/ou participer à l\'acte parent'},
	[18] = {title = 'Tentative d\'enlèvement', class = 'Felony', id = 'P.C. 1018', months = 10, fine = 450, color = 'orange', description = 'L\'acte de tenter de prendre quelqu\'un contre sa volonté'},
	[19] = {title = 'Prise d\'otage', class = 'Felony', id = 'P.C. 1019', months = 20, fine = 1200, color = 'orange', description = 'L\'acte de prendre une autre personne contre sa volonté pour un gain personnel'},
	[20] = {title = 'Complice de prise d\'otage', class = 'Felony', id = 'P.C. 1020', months = 10, fine = 600, color = 'orange', description = 'Être présent et/ou participer à l\'acte parent'},
	[21] = {title = 'Emprisonnement illégal d\'un fonctionnaire public ou d\'un agent de la paix', class = 'Felony', id = 'P.C. 1021', months = 25, fine = 4000, color = 'orange', description = 'L\'acte de prendre un employé du gouvernement contre sa volonté pendant une période prolongée'},
	[22] = {title = 'Menaces criminelles', class = 'Misdemeanor', id = 'P.C. 1022', months = 5, fine = 500, color = 'orange', description = 'L\'acte de déclarer l\'intention de commettre un crime contre une autre personne'},
	[23] = {title = 'Mise en danger délibérée', class = 'Misdemeanor', id = 'P.C. 1023', months = 10, fine = 1000, color = 'orange', description = 'L\'acte de mettre délibérément en danger la vie d\'une autre personne, ce qui peut la placer en danger de mort ou de lésions corporelles'},
	[24] = {title = 'Tir lié à un gang', class = 'Felony', id = 'P.C. 1024', months = 30, fine = 2500, color = 'red', description = 'L\'acte par lequel une arme à feu est déchargée en relation avec une activité de gang'},
	[25] = {title = 'Cannibalisme', class = 'Felony', id = 'P.C. 1025', months = 0, fine = 0, color = 'red', description = 'L\'acte par lequel une personne consomme volontairement la chair d\'une autre'},
	[26] = {title = 'Torture', class = 'Felony', id = 'P.C. 1026', months = 40, fine = 4500, color = 'red', description = 'L\'acte de causer du tort à une autre personne pour extraire des informations et/ou pour son propre plaisir'},

    },
    [2] = {
	[1] = {title = 'Vol simple', class = 'Infraction', id = 'P.C. 2001', months = 0, fine = 250, color = 'green', description = 'Le vol de biens d\'une valeur inférieure à 50 $'},
	[2] = {title = 'Vol qualifié', class = 'Misdemeanor', id = 'P.C. 2002', months = 10, fine = 600, color = 'green', description = 'Vol de biens d\'une valeur supérieure à 700 $'},
	[3] = {title = 'Vol de voiture qualifié A', class = 'Felony', id = 'P.C. 2003', months = 15, fine = 900, color = 'green', description = 'L\'acte de voler un véhicule appartenant à quelqu\'un d\'autre sans permission'},
	[4] = {title = 'Vol de voiture qualifié B', class = 'Felony', id = 'P.C. 2004', months = 35, fine = 3500, color = 'green', description = 'L\'acte de voler un véhicule appartenant à quelqu\'un d\'autre sans permission tout en étant armé'},
	[5] = {title = 'Carjacking', class = 'Felony', id = 'P.C. 2005', months = 30, fine = 2000, color = 'orange', description = 'L\'acte de prendre de force un véhicule à ses occupants'},
	[6] = {title = 'Cambriolage', class = 'Misdemeanor', id = 'P.C. 2006', months = 10, fine = 500, color = 'green', description = 'L\'acte d\'entrer illégalement dans un bâtiment avec l\'intention de commettre un crime, en particulier le vol.'},
	[7] = {title = 'Vol à main armée', class = 'Felony', id = 'P.C. 2007', months = 25, fine = 2000, color = 'green', description = 'L\'action de prendre illégalement des biens à une personne ou à un endroit par la force ou la menace de la force.'},
	[8] = {title = 'Complice de vol à main armée', class = 'Felony', id = 'P.C. 2008', months = 12, fine = 1000, color = 'green', description = 'Être présent et/ou participer à l\'acte parent'},
	[9] = {title = 'Tentative de vol à main armée', class = 'Felony', id = 'P.C. 2009', months = 20, fine = 1000, color = 'green', description = 'L\'action de tenter de prendre illégalement des biens à une personne ou à un endroit par la force ou la menace de la force.'},
	[10] = {title = 'Vol à main armée', class = 'Felony', id = 'P.C. 2010', months = 30, fine = 3000, color = 'orange', description = 'L\'action de prendre illégalement des biens à une personne ou à un endroit par la force ou la menace de la force tout en étant armé.'},
	[11] = {title = 'Complice de vol à main armée', class = 'Felony', id = 'P.C. 2011', months = 15, fine = 1500, color = 'orange', description = 'Être présent et/ou participer à l\'acte parent'},
	[12] = {title = 'Tentative de vol à main armée', class = 'Felony', id = 'P.C. 2012', months = 25, fine = 1500, color = 'orange', description = 'L\'action de tenter de prendre illégalement des biens à une personne ou à un endroit par la force ou la menace de la force tout en étant armé.'},
	[13] = {title = 'Grande rapine', class = 'Felony', id = 'P.C. 2013', months = 45, fine = 7500, color = 'orange', description = 'Vol de biens personnels ayant une valeur supérieure à un montant légalement spécifié.'},
	[14] = {title = 'Partir sans payer', class = 'Infraction', id = 'P.C. 2014', months = 0, fine = 500, color = 'green', description = 'L\'acte de quitter un établissement sans payer le service fourni'},
	[15] = {title = 'Possession de monnaie non légale', class = 'Misdemeanor', id = 'P.C. 2015', months = 10, fine = 750, color = 'green', description = 'Être en possession de monnaie volée'},
	[16] = {title = 'Possession d\'articles émis par le gouvernement', class = 'Misdemeanor', id = 'P.C. 2016', months = 15, fine = 1000, color = 'green', description = 'Être en possession d\'articles uniquement accessibles aux employés du gouvernement'},
	[17] = {title = 'Possession d\'articles utilisés dans la commission d\'un crime', class = 'Misdemeanor', id = 'P.C. 2017', months = 10, fine = 500, color = 'green', description = 'Être en possession d\'articles qui ont déjà été utilisés pour commettre des crimes'},
	[18] = {title = 'Vente d\'articles utilisés dans la commission d\'un crime', class = 'Felony', id = 'P.C. 2018'},

    },
    [3] = {
	[1] = {title = 'Usurpation d\'identité', class = 'Misdemeanor', id = 'P.C. 3001', months = 15, fine = 1250, color = 'green', description = 'L\'action de se faire passer faussement pour une autre personne pour tromper'},
	[2] = {title = 'Usurpation d\'un agent de la paix ou d\'un fonctionnaire public', class = 'Felony', id = 'P.C. 3002', months = 25, fine = 2750, color = 'green', description = 'L\'action de se faire passer faussement pour un employé du gouvernement pour tromper'},
	[3] = {title = 'Usurpation d\'un juge', class = 'Felony', id = 'P.C. 3003', months = 0, fine = 0, color = 'green', description = 'L\'action de se faire passer faussement pour un juge pour tromper'},
	[4] = {title = 'Possession d\'une identification volée', class = 'Misdemeanor', id = 'P.C. 3004', months = 10, fine = 750, color = 'green', description = 'Avoir l\'identification d\'une autre personne sans son consentement'},
	[5] = {title = 'Possession d\'une identification gouvernementale volée', class = 'Misdemeanor', id = 'P.C. 3005', months = 20, fine = 2000, color = 'green', description = 'Avoir l\'identification d\'un employé du gouvernement sans son consentement'},
	[6] = {title = 'Extorsion', class = 'Felony', id = 'P.C. 3006', months = 20, fine = 900, color = 'orange', description = 'Menacer ou causer des dommages à une personne ou à des biens en vue d\'un gain financier'},
	[7] = {title = 'Fraude', class = 'Misdemeanor', id = 'P.C. 3007', months = 10, fine = 450, color = 'green', description = 'Tromper une autre personne en vue d\'un gain financier'},
	[8] = {title = 'Contrefaçon', class = 'Misdemeanor', id = 'P.C. 3008', months = 15, fine = 750, color = 'green', description = 'Falsifier des documents légaux à des fins personnelles'},
	[9] = {title = 'Blanchiment d\'argent', class = 'Felony', id = 'P.C. 3009', months = 0, fine = 0, color = 'red', description = 'Le traitement d\'argent volé pour le convertir en monnaie légale'},

    },
    [4] = {
	[1] = {title = 'Violation de propriété privée', class = 'Misdemeanor', id = 'P.C. 4001', months = 10, fine = 450, color = 'green', description = 'Le fait pour une personne d\'être à l\'intérieur des limites d\'un lieu où elle n\'est pas légalement autorisée'},
	[2] = {title = 'Violation de propriété majeure', class = 'Felony', id = 'P.C. 4002', months = 15, fine = 1500, color = 'green', description = 'Le fait pour une personne d\'être entrée à plusieurs reprises dans les limites d\'un lieu où elle sait qu\'elle n\'est pas légalement autorisée'},
	[3] = {title = 'Incendie criminel', class = 'Felony', id = 'P.C. 4003', months = 15, fine = 1500, color = 'orange', description = 'L\'utilisation du feu et d\'accélérants pour détruire, endommager malicieusement ou causer la mort à une personne ou à un bien'},
	[4] = {title = 'Vandalisme', class = 'Infraction', id = 'P.C. 4004', months = 0, fine = 300, color = 'green', description = 'La destruction délibérée de biens'},
	[5] = {title = 'Vandalisme de biens publics', class = 'Felony', id = 'P.C. 4005', months = 20, fine = 1500, color = 'green', description = 'La destruction délibérée de biens publics'},
	[6] = {title = 'Jet de détritus', class = 'Infraction', id = 'P.C. 4006', months = 0, fine = 200, color = 'green', description = 'Le fait de jeter délibérément des déchets dans un endroit non désigné et non dans une poubelle désignée'},

    },
    [5] = {
	[1] = {title = 'Corruption d\'un fonctionnaire gouvernemental', class = 'Felony', id = 'P.C. 5001', months = 20, fine = 3500, color = 'green', description = 'L\'utilisation d\'argent, de faveurs et/ou de biens pour gagner la faveur d\'un fonctionnaire gouvernemental'},
	[2] = {title = 'Loi anti-masque', class = 'Infraction', id = 'P.C. 5002', months = 0, fine = 750, color = 'green', description = 'Le port d\'un masque dans une zone interdite'},
	[3] = {title = 'Possession de contrebande dans un établissement gouvernemental', class = 'Felony', id = 'P.C. 5003', months = 25, fine = 1000, color = 'green', description = 'Être en possession d\'articles illégaux tout en étant dans un bâtiment gouvernemental'},
	[4] = {title = 'Possession criminelle de biens volés', class = 'Misdemeanor', id = 'P.C. 5004', months = 10, fine = 500, color = 'green', description = 'Être en possession d\'articles volés sciemment ou non'},
	[5] = {title = 'Évasion', class = 'Felony', id = 'P.C. 5005', months = 10, fine = 450, color = 'green', description = 'L\'action de quitter délibérément et sciemment la garde tout en étant légalement arrêté, détenu ou en prison'},
	[6] = {title = 'Évasion de prison', class = 'Felony', id = 'P.C. 5006', months = 30, fine = 2500, color = 'orange', description = 'L\'action de quitter la garde d\'État d\'un établissement de détention d\'État ou de comté'},
	[7] = {title = 'Complicité d\'évasion de prison', class = 'Felony', id = 'P.C. 5007', months = 25, fine = 2000, color = 'orange', description = 'Être présent et/ou participer à l\'acte parent'},
	[8] = {title = 'Tentative d\'évasion de prison', class = 'Felony', id = 'P.C. 5008', months = 20, fine = 1500, color = 'orange', description = 'La tentative délibérée et intentionnelle de s\'échapper d\'un établissement de détention d\'État ou de comté'},
	[9] = {title = 'Parjure', class = 'Felony', id = 'P.C. 5009', months = 0, fine = 0, color = 'green', description = 'L\'action de déclarer des faussetés tout en étant légalement tenu de dire la vérité'},
	[10] = {title = 'Violation d\'une ordonnance de restriction', class = 'Felony', id = 'P.C. 5010', months = 20, fine = 2250, color = 'green', description = 'La violation délibérée et consciente de la documentation protectrice ordonnée par le tribunal'},
	[11] = {title = 'Détournement de fonds', class = 'Felony', id = 'P.C. 5011', months = 45, fine = 10000, color = 'green', description = 'Le déplacement délibéré et conscient de fonds de comptes bancaires non personnels vers des comptes bancaires personnels à des fins lucratives'},
	[12] = {title = 'Exercice illégal', class = 'Felony', id = 'P.C. 5012', months = 15, fine = 1500, color = 'orange', description = 'L\'action de fournir un service sans licence légale et approbation appropriées'},
	[13] = {title = 'Mauvais usage des systèmes d\'urgence', class = 'Infraction', id = 'P.C. 5013', months = 0, fine = 600, color = 'orange', description = 'Utilisation d\'équipements d\'urgence gouvernementaux à des fins non prévues'},
	[14] = {title = 'Conspiration', class = 'Misdemeanor', id = 'P.C. 5014', months = 10, fine = 450, color = 'green', description = 'L\'acte de planifier un crime mais de ne pas encore le commettre'},
	[15] = {title = 'Violation d\'une ordonnance de la cour', class = 'Misdemeanor', id = 'P.C. 5015', months = 0, fine = 0, color = 'orange', description = 'L\'infraction à la documentation ordonnée par le tribunal'},
	[16] = {title = 'Défaut de comparution', class = 'Misdemeanor', id = 'P.C. 5016', months = 0, fine = 0, color = 'orange', description = 'Lorsqu\'une personne légalement tenue de comparaître en cour ne le fait pas'},
	[17] = {title = 'Outrage à la cour', class = 'Felony', id = 'P.C. 5017', months = 0, fine = 0, color = 'orange', description = 'La perturbation des audiences judiciaires dans une salle d\'audience pendant qu\'elle est en session (décision judiciaire)'},
	[18] = {title = 'Résistance à l\'arrestation', class = 'Misdemeanor', id = 'P.C. 5018', months = 5, fine = 300, color = 'orange', description = 'L\'acte de ne pas permettre aux agents de maintien de la paix de vous prendre en garde à vue de manière volontaire'},    
    },
    [6] = {
        [1] = {title = 'Disobeying a Peace Officer', class = 'infraction', id = 'P.C. 6001', months = 0, fine = 750, color = 'green', description = 'The willful disregard of a lawful order'},
        [2] = {title = 'Disorderly Conduct', class = 'Infraction', id = 'P.C. 6002', months = 0, fine = 250, color = 'green', description = 'Acting in a manner that creates a hazardous or physically offensive condition by any act which serves no legitimate purpose of the actor. '},
        [3] = {title = 'Disturbing the Peace', class = 'infraction', id = 'P.C. 6003', months = 0, fine = 350, color = 'green', description = 'Action in a manner that causes unrest and disrupts public order'},
        [4] = {title = 'False Reporting', class = 'Misdemeanor', id = 'P.C. 6004', months = 10, fine = 750, color = 'green', description = 'The act of reporting a crime that did not happen'},
        [5] = {title = 'Harassment', class = 'Misdemeanor', id = 'P.C. 6005', months = 10, fine = 500, color = 'orange', description = 'The repeated disruption or verbal attacks of another person'},
        [6] = {title = 'Misdemeanor Obstruction of Justice', class = 'Misdemeanor', id = 'P.C. 6006', months = 10, fine = 500, color = 'green', description = 'Acting in a way that hinders the process of Justice or lawful investigations'},
        [7] = {title = 'Felony Obstruction of Justice', class = 'Felony', id = 'P.C. 6007', months = 15, fine = 900, color = 'green', description = 'Acting in a way that hinders the process of Justice or lawful investigations while using violence'},
        [8] = {title = 'Inciting a Riot', class = 'Felony', id = 'P.C. 6008', months = 25, fine = 1000, color = 'orange', description = 'Causing civil unrest in a manner to incite a group to cause harm to people or property'},
        [9] = {title = 'Loitering on Government Properties', class = 'Infraction', id = 'P.C. 6009', months = 0, fine = 500, color = 'green', description = 'When someone is present in a government proper for an extended period of time'},
        [10] = {title = 'Tampering', class = 'Misdemeanor', id = 'P.C. 6010', months = 10, fine = 500, color = 'green', description = 'When someone willfully, knowingly and indirectly interfering with key points of a lawful investigation'},
        [11] = {title = 'Vehicle Tampering', class = 'Misdemeanor', id = 'P.C. 6011', months = 15, fine = 750, color = 'green', description = 'The willful and knowing interference the normal function of a vehicle'},
        [12] = {title = 'Evidence Tampering', class = 'Felony', id = 'P.C. 6012', months = 20, fine = 1000, color = 'green', description = 'The willful and knowing interference with evidence from a lawful investigation'},
        [13] = {title = 'Witness Tampering', class = 'Felony', id = 'P.C. 6013', months = 0, fine = 0, color = 'green', description = 'The willful and knowing coaching or coercing of a witness in a lawful investigation'},
        [14] = {title = 'Failure to Provide Identification', class = 'Misdemeanor', id = 'P.C. 6014', months = 15, fine = 1500, color = 'green', description = 'The act of not presenting identification when lawfully required to do so'},
        [15] = {title = 'Vigilantism', class = 'Felony', id = 'P.C. 6015', months = 30, fine = 1500, color = 'orange', description = 'The act of engaging in enforcing the law with legal authority to do so'},
        [16] = {title = 'Unlawful Assembly', class = 'Misdemeanor', id = 'P.C. 6016', months = 10, fine = 750, color = 'orange', description = 'when a large group gathers in a location that requires prior approval to do so'},
        [17] = {title = 'Government Corruption', class = 'Felony', id = 'P.C. 6017', months = 0, fine = 0, color = 'red', description = 'The act of using political position and power for self gain'},
        [18] = {title = 'Stalking', class = 'Felony', id = 'P.C. 6018', months = 40, fine = 1500, color = 'orange', description = 'When one person monitors another without their consent'},
        [19] = {title = 'Aiding and Abetting', class = 'Misdemeanor', id = 'P.C. 6019', months = 15, fine = 450, color = 'orange', description = 'To assist someone in committing or to encourage someone to commit a crime'},
        [20] = {title = 'Harboring a Fugitive', class = 'Misdemeanor', id = 'P.C. 6020', months = 10, fine = 1000, color = 'green', description = 'When someone willingly hides another who is wanted by the authorities'},
    },
    [7] = {
        [1] = {title = 'Misdemeanor Possession of Marijuana', class = 'Misdemeanor', id = 'P.C. 7001', months = 5, fine = 250, color = 'green', description = 'The possession of a quantity of marijuana in the amount of less the 4 blunts'},
        [2] = {title = 'Felony manufacturing of Marijuana', class = 'Felony', id = 'P.C. 7002', months = 15, fine = 1000, color = 'red', description = 'The possession of a quantity of marijuana that is from manufacturing'},
        [3] = {title = 'Cultivation of Marijuana A', class = 'Misdemeanor', id = 'P.C. 7003', months = 10, fine = 750, color = 'green', description = 'The possession of 4 or less marijuana plants'},
        [4] = {title = 'Cultivation of Marijuana B', class = 'Felony', id = 'P.C. 7004', months = 30, fine = 1500, color = 'orange', description = 'The possession of 5 or more marijuana plants'},
        [5] = {title = 'Possession of Marijuana with Intent to Distribute', class = 'Felony', id = 'P.C. 7005', months = 30, fine = 3000, color = 'orange', description = 'The possession of a quantity of Marijuana for distribution'},
        [6] = {title = 'Misdemeanor Possession of Cocaine', class = 'Misdemeanor', id = 'P.C. 7006', months = 7, fine = 500, color = 'green', description = 'The possession of cocaine in a small quantity usually for personal use'},
        [7] = {title = 'Felony manufacturing Possession of Cocaine', class = 'Felony', id = 'P.C. 7007', months = 25, fine = 1500, color = 'red', description = 'The possession of a quantity of cocaine that is from manufacturing'},
        [8] = {title = 'Possession of Cocaine with Intent to Distribute', class = 'Felony', id = 'P.C. 7008', months = 35, fine = 4500, color = 'orange', description = 'The possession of a quantity of Cocaine for distribution'},
        [9] = {title = 'Misdemeanor Possession of Methamphetamine', class = 'Misdemeanor', id = 'P.C. 7009', months = 7, fine = 500, color = 'green', description = 'The possession of methamphetamine in a small quantity usually for personal use'},
        [10] = {title = 'Felony manufacturing Possession of Methamphetamine', class = 'Felony', id = 'P.C. 7010', months = 25, fine = 1500, color = 'red', description = 'The possession of a quantity of methamphetamine that is from manufacturing'},
        [11] = {title = 'Possession of Methamphetamine with Intent to Distribute', class = 'Felony', id = 'P.C. 7011', months = 35, fine = 4500, color = 'orange', description = 'The possession of a quantity of Methamphetamine for distribution'},
        [12] = {title = 'Misdemeanor Possession of Oxy / Vicodin', class = 'Misdemeanor', id = 'P.C. 7012', months = 7, fine = 500, color = 'green', description = 'The possession of oxy / vicodin in a small quantity usually for personal use without prescription'},
        [13] = {title = 'Felony manufacturing Possession of Oxy / Vicodin', class = 'Felony', id = 'P.C. 7013', months = 25, fine = 1500, color = 'red', description = 'The possession of a quantity of oxy / vicodin that is from manufacturing'},
        [14] = {title = 'Felony Possession of Oxy / Vicodin with Intent to Distribute', class = 'Felony', id = 'P.C. 7014', months = 35, fine = 4500, color = 'orange', description = 'The possession of a quantity of oxy / vicodin for distribution'},
        [15] = {title = 'Misdemeanor Possession of Ecstasy', class = 'Misdemeanor', id = 'P.C. 7015', months = 7, fine = 500, color = 'green', description = 'The possession of ecstasy in a small quantity usually for personal use'},
        [16] = {title = 'Felony manufacturing Possession of Ecstasy', class = 'Felony', id = 'P.C. 7016', months = 25, fine = 1500, color = 'red', description = 'The possession of a quantity of ecstasy that is from manufacturing'},
        [17] = {title = 'Possession of Ecstasy with Intent to Distribute', class = 'Felony', id = 'P.C. 7017', months = 35, fine = 4500, color = 'orange', description = 'The possession of a quantity of ecstasy for distribution'},
        [18] = {title = 'Misdemeanor Possession of Opium', class = 'Misdemeanor', id = 'P.C. 7018', months = 7, fine = 500, color = 'green', description = 'The possession of opium in a small quantity usually for personal use'},
        [19] = {title = 'Felony manufacturing Possession of Opium', class = 'Felony', id = 'P.C. 7019', months = 25, fine = 1500, color = 'red', description = 'The possession of a quantity of opium that is from manufacturing'},
        [20] = {title = 'Possession of Opium with Intent to Distribute', class = 'Felony', id = 'P.C. 7020', months = 35, fine = 4500, color = 'orange', description = 'The possession of a quantity of Opium for distribution'},
        [21] = {title = 'Misdemeanor Possession of Adderall', class = 'Misdemeanor', id = 'P.C. 7021', months = 7, fine = 500, color = 'green', description = 'The possession of adderall in a small quantity usually for personal use without prescription'},
        [22] = {title = 'Felony manufacturing Possession of Adderall', class = 'Felony', id = 'P.C. 7022', months = 25, fine = 1500, color = 'red', description = 'The possession of a quantity of adderall that is from manufacturing'},
        [23] = {title = 'Possession of Adderall with Intent to Distribute', class = 'Felony', id = 'P.C. 7023', months = 35, fine = 4500, color = 'orange', description = 'The possession of a quantity of Adderall for distribution'},
        [24] = {title = 'Misdemeanor Possession of Xanax', class = 'Misdemeanor', id = 'P.C. 7024', months = 7, fine = 500, color = 'green', description = 'The possession of xanax in a small quantity usually for personal use without prescription'},
        [25] = {title = 'Felony manufacturing Possession of Xanax', class = 'Felony', id = 'P.C. 7025', months = 25, fine = 1500, color = 'red', description = 'The possession of a quantity of xanax that is from manufacturing'},
        [26] = {title = 'Possession of Xanax with Intent to Distribute', class = 'Felony', id = 'P.C. 7026', months = 35, fine = 4500, color = 'orange', description = 'The possession of a quantity of Xanax for distribution'},
        [27] = {title = 'Misdemeanor Possession of Shrooms', class = 'Misdemeanor', id = 'P.C. 7027', months = 7, fine = 500, color = 'green', description = 'The possession of shrooms in a small quantity usually for personal use'},
        [28] = {title = 'Felony manufacturing Possession of Shrooms', class = 'Felony', id = 'P.C. 7028', months = 25, fine = 1500, color = 'red', description = 'The possession of a quantity of shrooms that is from manufacturing'},
        [29] = {title = 'Possession of Shrooms with Intent to Distribute', class = 'Felony', id = 'P.C. 7029', months = 35, fine = 4500, color = 'orange', description = 'The possession of a quantity of Shrooms for distribution'},
        [30] = {title = 'Misdemeanor Possession of Lean', class = 'Misdemeanor', id = 'P.C. 7030', months = 7, fine = 500, color = 'green', description = 'The possession of lean in a small quantity usually for personal use'},
        [31] = {title = 'Felony manufacturing Possession of Lean', class = 'Felony', id = 'P.C. 7031', months = 25, fine = 1500, color = 'red', description = 'The possession of a quantity of lean that is from manufacturing'},
        [32] = {title = 'Possession of Lean with Intent to Distribute', class = 'Felony', id = 'P.C. 7032', months = 35, fine = 4500, color = 'orange', description = 'The possession of a quantity of lean for distribution'},
        [33] = {title = 'Sale of a controlled substance', class = 'Misdemeanor', id = 'P.C. 7033', months = 10, fine = 1000, color = 'green', description = 'The sale of a substance that is controlled by law'},
        [34] = {title = 'Drug Trafficking', class = 'Felony', id = 'P.C. 7034', months = 0, fine = 0, color = 'red', description = 'The large scale movement of illegal drugs'},
        [35] = {title = 'Desecration of a Human Corpse', class = 'Felony', id = 'P.C. 7035', months = 20, fine = 1500, color = 'orange', description = 'When someone harms, disturbs or destroys the remains of another person'},
        [36] = {title = 'Public Intoxication', class = 'Infraction', id = 'P.C. 7036', months = 0, fine = 500, color = 'green', description = 'When someone is intoxicated above legal limit in public'},
        [37] = {title = 'Public Indecency', class = 'Misdemeanor', id = 'P.C. 7037', months = 10, fine = 750, color = 'green', description = 'The act of someone exposing themself in a way that infringes in public morals'},
    },
    [8] = {
        [1] = {title = 'Criminal Possession of Weapon Class A', class = 'Felony', id = 'P.C. 8001', months = 10, fine = 500, color = 'green', description = 'Possession of a Class A firearm without licensing'},
        [2] = {title = 'Criminal Possession of Weapon Class B', class = 'Felony', id = 'P.C. 8002', months = 15, fine = 1000, color = 'green', description = 'Possession of a Class B firearm without licensing'},
        [3] = {title = 'Criminal Possession of Weapon Class C', class = 'Felony', id = 'P.C. 8003', months = 30, fine = 3500, color = 'green', description = 'Possession of a Class C firearm without licensing'},
        [4] = {title = 'Criminal Possession of Weapon Class D', class = 'Felony', id = 'P.C. 8004', months = 25, fine = 1500, color = 'green', description = 'Possession of a Class D firearm without licensing'},
        [5] = {title = 'Criminal Sale of Weapon Class A', class = 'Felony', id = 'P.C. 8005', months = 15, fine = 1000, color = 'orange', description = 'The act of selling a Class A firearm without licensing'},
        [6] = {title = 'Criminal Sale of Weapon Class B', class = 'Felony', id = 'P.C. 8006', months = 20, fine = 2000, color = 'orange', description = 'The act of selling a Class B firearm without licensing'},
        [7] = {title = 'Criminal Sale of Weapon Class C', class = 'Felony', id = 'P.C. 8007', months = 35, fine = 7000, color = 'orange', description = 'The act of selling a Class C firearm without licensing'},
        [8] = {title = 'Criminal Sale of Weapon Class D', class = 'Felony', id = 'P.C. 8008', months = 30, fine = 3000, color = 'orange', description = 'The act of selling a Class D firearm without licensing'},
        [9] = {title = 'Criminal Use of Weapon', class = 'Misdemeanor', id = 'P.C. 8009', months = 10, fine = 450, color = 'orange', description = 'Use of a weapon while in commission of a crime'},
        [10] = {title = 'Possession of Illegal Firearm Modifications', class = 'Misdemeanor', id = 'P.C. 8010', months = 10, fine = 300, color = 'green', description = 'Being in possession of firearm modifications unlawfully'},
        [11] = {title = 'Weapon Trafficking', class = 'Felony', id = 'P.C. 8011', months = 0, fine = 0, color = 'red', description = 'The transportation of a large amount of weapons for one point to another'},
        [12] = {title = 'Brandishing a Weapon', class = 'Misdemeanor', id = 'P.C. 8012', months = 15, fine = 500, color = 'orange', description = 'The act of making a firearm purposely visible'},
        [13] = {title = 'Insurrection', class = 'Felony', id = 'P.C. 8013', months = 0, fine = 0, color = 'red', description = 'Attempting to overthrow the government with violence'},
        [14] = {title = 'Flying into Restricted Airspace', class = 'Felony', id = 'P.C. 8014', months = 20, fine = 1500, color = 'green', description = 'Piloting and aircraft into airspace that is governmentally controlled'},
        [15] = {title = 'Jaywalking', class = 'Infraction', id = 'P.C. 8015', months = 0, fine = 150, color = 'green', description = 'crossing a roadway in a manner that is hazardous to motor vehicles'},
        [16] = {title = 'Criminal Use of Explosives', class = 'Felony', id = 'P.C. 8016', months = 30, fine = 2500, color = 'orange', description = 'Use of explosives to committing a crime'},
    },
    [9] = {
        [1] = {title = 'Driving While Intoxicated', class = 'Misdemeanor', id = 'P.C. 9001', months = 5, fine = 300, color = 'green', description = 'Operating a motor vehicle while impaired by alcohol'},
        [2] = {title = 'Evading', class = 'Misdemeanor', id = 'P.C. 9002', months = 5, fine = 400, color = 'green', description = 'Hiding or running from lawful detainment'},
        [3] = {title = 'Reckless Evading', class = 'Felony', id = 'P.C. 9003', months = 10, fine = 800, color = 'orange', description = 'Recklessly disregarding safety and Hiding or running from lawful detainment while '},
        [4] = {title = 'Failure to Yield to Emergency Vehicle', class = 'Infraction', id = 'P.C. 9004', months = 0, fine = 600, color = 'green', description = 'Not giving way to emergency vehicles'},
        [5] = {title = 'Failure to Obey Traffic Control Device', class = 'Infraction', id = 'P.C. 9005', months = 0, fine = 150, color = 'green', description = 'Not following the safety devices of the roadway'},
        [6] = {title = 'Nonfunctional Vehicle', class = 'Infraction', id = 'P.C. 9006', months = 0, fine = 75, color = 'green', description = 'Having a vehicle that is no longer functional in the roadway'},
        [7] = {title = 'Negligent Driving', class = 'Infraction', id = 'P.C. 9007', months = 0, fine = 300, color = 'green', description = 'Driving in a manner as to unknowingly disregard safety'},
        [8] = {title = 'Reckless Driving', class = 'Misdemeanor', id = 'P.C. 9008', months = 10, fine = 750, color = 'orange', description = 'Driving in a manner as to knowingly disregard safety'},
        [9] = {title = 'Third Degree Speeding', class = 'Infraction', id = 'P.C. 9009', months = 0, fine = 225, color = 'green', description = 'Speeding 15 over the limit'},
        [10] = {title = 'Second Degree Speeding', class = 'Infraction', id = 'P.C. 9010', months = 0, fine = 450, color = 'green', description = 'Speeding 35 over the limit'},
        [11] = {title = 'First Degree Speeding', class = 'Infraction', id = 'P.C. 9011', months = 0, fine = 750, color = 'green', description = 'Speeding 50 over the limit'},
        [12] = {title = 'Unlicensed Operation of Vehicle', class = 'Infraction', id = 'P.C. 9012', months = 0, fine = 500, color = 'green', description = 'The operation of a motor vehicle without proper licensing'},
        [13] = {title = 'Illegal U-Turn', class = 'Infraction', id = 'P.C. 9013', months = 0, fine = 75, color = 'green', description = 'Performing a u-turn where it is prohibited'},
        [14] = {title = 'Illegal Passing', class = 'Infraction', id = 'P.C. 9014', months = 0, fine = 300, color = 'green', description = 'Passing other motor vehicles in a prohibited manner'},
        [15] = {title = 'Failure to Maintain Lane', class = 'Infraction', id = 'P.C. 9015', months = 0, fine = 300, color = 'green', description = 'Not staying in the correct lane with a motor vehicle'},
        [16] = {title = 'Illegal Turn', class = 'Infraction', id = 'P.C. 9016', months = 0, fine = 150, color = 'green', description = 'Performing a turn where it is prohibited'},
        [17] = {title = 'Failure to Stop', class = 'Infraction', id = 'P.C. 9017', months = 0, fine = 600, color = 'green', description = 'Not stopping for a lawful stop or traffic device'},
        [18] = {title = 'Unauthorized Parking', class = 'Infraction', id = 'P.C. 9018', months = 0, fine = 300, color = 'green', description = 'Parking a vehicle in a location that requires approval with any'},
        [19] = {title = 'Hit and Run', class = 'Misdemeanor', id = 'P.C. 9019', months = 10, fine = 500, color = 'green', description = 'Striking another person or vehicle and fleeing the location'},
        [20] = {title = 'Driving without Headlights or Signals', class = 'Infraction', id = 'P.C. 9020', months = 0, fine = 300, color = 'green', description = 'Operating a vehicle with no functional lights'},
        [21] = {title = 'Street Racing', class = 'Felony', id = 'P.C. 9021', months = 15, fine = 1500, color = 'green', description = 'Operating motorvehicles in a contest'},
        [22] = {title = 'Piloting without Proper Licensing', class = 'Felony', id = 'P.C. 9022', months = 20, fine = 1500, color = 'orange', description = 'Failure to be in possession of valid licensing when operating an aircraft'},
        [23] = {title = 'Unlawful Use of a Motor Vehicle', class = 'Misdemeanor', id = 'P.C. 9023', months = 10, fine = 750, color = 'green', description = 'The use of a motor vehicle without a lawful reason'},
    },
    [10] = {
        [1] = {title = 'Hunting in Restricted Areas', class = 'Infraction', id = 'P.C. 10001', months = 0, fine = 450, color = 'green', description = 'Harvesting game in areas where it is prohibited to do so'},
        [2] = {title = 'Unlicensed Hunting', class = 'Infraction', id = 'P.C. 10002', months = 0, fine = 450, color = 'green', description = 'Harvesting game without proper licensing'},
        [3] = {title = 'Animal Cruelty', class = 'Misdemeanor', id = 'P.C. 10003', months = 10, fine = 450, color = 'green', description = 'The act of abusing an animal knowingly or not'},
        [4] = {title = 'Hunting with a Non-Hunting Weapon', class = 'Misdemeanor', id = 'P.C. 10004', months = 10, fine = 750, color = 'green', description = 'To use a weapon not lawfully stated or manufactured to be used for the harvesting of wild game'},
        [5] = {title = 'Hunting outside of hunting hours', class = 'Infraction', id = 'P.C. 10005', months = 0, fine = 750, color = 'green', description = 'Harvesting animals outside of specified time to do so'},
        [6] = {title = 'Overhunting', class = 'Misdemeanor', id = 'P.C. 10006', months = 10, fine = 1000, color = 'green', description = 'Taking more than legally specified amount of game'},
        [7] = {title = 'Poaching', class = 'Felony', id = 'P.C. 10007', months = 20, fine = 1250, color = 'red', description = 'Harvesting an animal that is listed as legally non-harvestable'},
    }
}

Config.AllowedJobs = {}
for index, value in pairs(Config.PoliceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.AmbulanceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.DojJobs) do
    Config.AllowedJobs[index] = value
end

Config.ColorNames = {
    [0] = "Noir Métallisé",
    [1] = "Noir Graphite Métallisé",
    [2] = "Acier Noir Métallisé",
    [3] = "Argent Foncé Métallisé",
    [4] = "Argent Métallisé",
    [5] = "Argent Bleu Métallisé",
    [6] = "Gris Acier Métallisé",
    [7] = "Argent Ombre Métallisé",
    [8] = "Argent Pierre Métallisé",
    [9] = "Argent Minuit Métallisé",
    [10] = "Gris Métal Métallisé",
    [11] = "Gris Anthracite Métallisé",
    [12] = "Noir Mat",
    [13] = "Gris Mat",
    [14] = "Gris Clair Mat",
    [15] = "Noir Utilitaire",
    [16] = "Poly Noir Utilitaire",
    [17] = "Argent Foncé Utilitaire",
    [18] = "Argent Utilitaire",
    [19] = "Gris Métal Utilitaire",
    [20] = "Argent Ombre Utilitaire",
    [21] = "Noir Usé",
    [22] = "Graphite Usé",
    [23] = "Gris Argenté Usé",
    [24] = "Argent Usé",
    [25] = "Argent Bleu Usé",
    [26] = "Argent Ombre Usé",
    [27] = "Rouge Métallisé",
    [28] = "Rouge Torino Métallisé",
    [29] = "Rouge Formule Métallisé",
    [30] = "Rouge Flamme Métallisé",
    [31] = "Rouge Gracieux Métallisé",
    [32] = "Rouge Grenat Métallisé",
    [33] = "Rouge Désert Métallisé",
    [34] = "Rouge Cabernet Métallisé",
    [35] = "Rouge Bonbon Métallisé",
    [36] = "Orange Aurore Métallisé",
    [37] = "Or Classique Métallisé",
    [38] = "Orange Métallisé",
    [39] = "Rouge Mat",
    [40] = "Rouge Foncé Mat",
    [41] = "Orange Mat",
    [42] = "Jaune Mat",
    [43] = "Rouge Utilitaire",
    [44] = "Rouge Vif Utilitaire",
    [45] = "Rouge Grenat Utilitaire",
    [46] = "Rouge Usé",
    [47] = "Rouge Doré Usé",
    [48] = "Rouge Foncé Usé",
    [49] = "Vert Foncé Métallisé",
    [50] = "Vert Course Métallisé",
    [51] = "Vert Mer Métallisé",
    [52] = "Vert Olive Métallisé",
    [53] = "Vert Métallisé",
    [54] = "Bleu Vert Essence Métallisé",
    [55] = "Vert Citron Mat",
    [56] = "Vert Foncé Utilitaire",
    [57] = "Vert Utilitaire",
    [58] = "Vert Foncé Usé",
    [59] = "Vert Usé",
    [60] = "Lavage Mer Usé",
    [61] = "Bleu Nuit Métallisé",
    [62] = "Bleu Foncé Métallisé",
    [63] = "Bleu Saxe Métallisé",
    [64] = "Bleu Métallisé",
    [65] = "Bleu Marin Métallisé",
    [66] = "Bleu Port Métallisé",
    [67] = "Bleu Diamant Métallisé",
    [68] = "Bleu Surf Métallisé",
    [69] = "Bleu Nautique Métallisé",
    [70] = "Bleu Lumineux Métallisé",
    [71] = "Bleu Violet Métallisé",
    [72] = "Bleu Spinnaker Métallisé",
    [73] = "Bleu Ultra Métallisé",
    [74] = "Bleu Lumineux Métallisé",
    [75] = "Bleu Foncé Utilitaire",
    [76] = "Bleu Nuit Utilitaire",
    [77] = "Bleu Utilitaire",
    [78] = "Bleu Mousse de Mer Utilitaire",
    [79] = "Bleu Éclair Utilitaire",
    [80] = "Poly Maui Bleu Utilitaire",
    [81] = "Bleu Lumineux Utilitaire",
    [82] = "Bleu Foncé Mat",
    [83] = "Bleu Mat",
    [84] = "Bleu Nuit Mat",
    [85] = "Bleu Foncé Usé",
    [86] = "Bleu Usé",
    [87] = "Bleu Clair Usé",
    [88] = "Jaune Taxi Métallisé",
    [89] = "Jaune Course Métallisé",
    [90] = "Bronze Métallisé",
    [91] = "Oiseau Jaune Métallisé",
    [92] = "Citron Vert Métallisé",
    [93] = "Champagne Métallisé",
    [94] = "Beige Pueblo Métallisé",
    [95] = "Ivoire Foncé Métallisé",
    [96] = "Marron Chocolat Métallisé",
    [97] = "Marron Doré Métallisé",
    [98] = "Marron Clair Métallisé",
    [99] = "Beige Paille Métallisé",
    [100] = "Marron Mousse Métallisé",
    [101] = "Marron Biston Métallisé",
    [102] = "Bois de Hêtre Métallisé",
    [103] = "Bois de Hêtre Foncé Métallisé",
    [104] = "Orange Chocolat Métallisé",
    [105] = "Sable de Plage Métallisé",
    [106] = "Sable Blanchi par le Soleil Métallisé",
    [107] = "Crème Métallisé",
    [108] = "Marron Utilitaire",
    [109] = "Marron Moyen Utilitaire",
    [110] = "Marron Clair Utilitaire",
    [111] = "Blanc Métallisé",
    [112] = "Blanc Givré Métallisé",
    [113] = "Beige Miel Usé",
    [114] = "Marron Usé",
    [115] = "Marron Foncé Usé",
    [116] = "Paille Beige Usée",
    [117] = "Acier Brossé",
    [118] = "Acier Noir Brossé",
    [119] = "Aluminium Brossé",
    [120] = "Chrome",
    [121] = "Blanc Cassé Usé",
    [122] = "Blanc Cassé Utilitaire",
    [123] = "Orange Usé",
    [124] = "Orange Clair Usé",
    [125] = "Vert Sécuricor Métallisé",
    [126] = "Jaune Taxi Usé",
    [127] = "Bleu Voiture de Police",
    [128] = "Vert Mat",
    [129] = "Marron Mat",
    [130] = "Orange Usé",
    [131] = "Blanc Mat",
    [132] = "Blanc Usé",
    [133] = "Vert Armée Olive Usé",
    [134] = "Blanc Pur",
    [135] = "Rose Vif",
    [136] = "Rose Saumon",
    [137] = "Rose Vermillon Métallisé",
    [138] = "Orange",
    [139] = "Vert",
    [140] = "Bleu",
    [141] = "Noir Bleu Métallisé",
    [142] = "Noir Violet Métallisé",
    [143] = "Noir Rouge Métallisé",
    [144] = "Vert Chasseur",
    [145] = "Violet Métallisé",
    [146] = "Bleu Foncé Métallisé V",
    [147] = "NOIR1 MODSHOP",
    [148] = "Violet Mat",
    [149] = "Violet Foncé Mat",
    [150] = "Rouge Lave Métallisé",
    [151] = "Vert Forêt Mat",
    [152] = "Vert Olive Drab Mat",
    [153] = "Marron Désert Mat",
    [154] = "Beige Désert Mat",
    [155] = "Vert Feuillage Mat",
    [156] = "COULEUR DE JANTES PAR DÉFAUT",
    [157] = "Bleu Epsilon",
    [158] = "Inconnu",
}

Config.ColorInformation = {
    [0] = "noir",
    [1] = "noir",
    [2] = "noir",
    [3] = "argent foncé",
    [4] = "argent",
    [5] = "argent bleu",
    [6] = "argent",
    [7] = "argent foncé",
    [8] = "argent",
    [9] = "argent bleu",
    [10] = "argent foncé",
    [11] = "argent foncé",
    [12] = "noir mat",
    [13] = "gris",
    [14] = "gris clair",
    [15] = "noir",
    [16] = "noir",
    [17] = "argent foncé",
    [18] = "argent",
    [19] = "gris métal utilitaire",
    [20] = "argent",
    [21] = "noir",
    [22] = "noir",
    [23] = "argent foncé",
    [24] = "argent",
    [25] = "argent bleu",
    [26] = "argent foncé",
    [27] = "rouge",
    [28] = "rouge torino",
    [29] = "rouge formule",
    [30] = "rouge flamme",
    [31] = "rouge gracieux",
    [32] = "rouge grenat",
    [33] = "rouge désert",
    [34] = "rouge cabernet",
    [35] = "rouge bonbon",
    [36] = "orange",
    [37] = "or classique",
    [38] = "orange",
    [39] = "rouge",
    [40] = "rouge foncé mat",
    [41] = "orange",
    [42] = "jaune mat",
    [43] = "rouge",
    [44] = "rouge vif",
    [45] = "rouge grenat",
    [46] = "rouge",
    [47] = "rouge",
    [48] = "rouge foncé",
    [49] = "vert foncé",
    [50] = "vert course",
    [51] = "vert mer",
    [52] = "vert olive",
    [53] = "vert",
    [54] = "bleu vert essence",
    [55] = "vert lime mat",
    [56] = "vert foncé",
    [57] = "vert",
    [58] = "vert foncé",
    [59] = "vert",
    [60] = "lavage mer",
    [61] = "bleu nuit",
    [62] = "bleu foncé",
    [63] = "bleu saxe",
    [64] = "bleu",
    [65] = "bleu",
    [66] = "bleu",
    [67] = "bleu diamant",
    [68] = "bleu",
    [69] = "bleu",
    [70] = "bleu lumineux",
    [71] = "bleu violet",
    [72] = "bleu",
    [73] = "bleu ultra",
    [74] = "bleu lumineux",
    [75] = "bleu foncé",
    [76] = "bleu nuit",
    [77] = "bleu",
    [78] = "bleu",
    [79] = "bleu clair",
    [80] = "bleu",
    [81] = "bleu lumineux",
    [82] = "bleu foncé mat",
    [83] = "bleu mat",
    [84] = "bleu mat",
    [85] = "bleu foncé",
    [86] = "bleu",
    [87] = "bleu clair",
    [88] = "jaune taxi",
    [89] = "jaune course",
    [90] = "bronze",
    [91] = "oiseau jaune",
    [92] = "citron vert",
    [93] = "champagne",
    [94] = "beige",
    [95] = "ivoire foncé",
    [96] = "marron",
    [97] = "marron",
    [98] = "marron clair",
    [99] = "beige",
    [100] = "marron",
    [101] = "marron",
    [102] = "hêtre",
    [103] = "hêtre foncé",
    [104] = "orange chocolat",
    [105] = "jaune",
    [106] = "jaune",
    [107] = "crème",
    [108] = "marron",
    [109] = "marron",
    [110] = "marron",
    [111] = "blanc",
    [112] = "blanc",
    [113] = "beige",
    [114] = "marron",
    [115] = "marron",
    [116] = "beige",
    [117] = "acier brossé",
    [118] = "acier noir brossé",
    [119] = "aluminium brossé",
    [120] = "chrome",
    [121] = "blanc usé",
    [122] = "blanc cassé",
    [123] = "orange",
    [124] = "orange clair",
    [125] = "vert",
    [126] = "jaune",
    [127] = "bleu",
    [128] = "vert",
    [129] = "marron",
    [130] = "orange",
    [131] = "blanc",
    [132] = "blanc",
    [133] = "vert olive foncé",
    [134] = "blanc pur",
    [135] = "rose vif",
    [136] = "rose saumon",
    [137] = "rose vermillon",
    [138] = "orange",
    [139] = "vert",
    [140] = "bleu",
    [141] = "noir bleu",
    [142] = "noir violet",
    [143] = "noir rouge",
    [144] = "vert chasseur",
    [145] = "violet",
    [146] = "bleu foncé v",
    [147] = "noir 1 magasin de mod",
    [148] = "violet mat",
    [149] = "violet foncé mat",
    [150] = "rouge lave",
    [151] = "vert forêt mat",
    [152] = "olive mat",
    [153] = "marron désert mat",
    [154] = "beige désert mat",
    [155] = "vert feuillage mat",
    [156] = "couleur de jante par défaut",
    [157] = "bleu epsilon",
    [158] = "inconnu",
}

Config.ClassList = {
    [0] = "Compact",
    [1] = "Sedan",
    [2] = "SUV",
    [3] = "Coupé",
    [4] = "Muscle",
    [5] = "Classique Sportive",
    [6] = "Sport",
    [7] = "Super",
    [8] = "Moto",
    [9] = "Tout-terrain",
    [10] = "Industriel",
    [11] = "Utilitaire",
    [12] = "Van",
    [13] = "Vélo",
    [14] = "Bateau",
    [15] = "Hélicoptère",
    [16] = "Avion",
    [17] = "Service",
    [18] = "Urgence",
    [19] = "Militaire",
    [20] = "Commercial",
    [21] = "Train"
}

function GetJobType(job)
	if Config.PoliceJobs[job] then
		return 'police'
	elseif Config.AmbulanceJobs[job] then
		return 'ambulance'
	elseif Config.DojJobs[job] then
		return 'doj'
	else
		return nil
	end
end
