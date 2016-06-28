//
//  Deal.swift
//  SoNantes
//
//  Created by Igor Stark on 28/06/2016.
//  Copyright © 2016 Igor Stark. All rights reserved.
//

import UIKit

/*
 {
 "NOM": "RESTAURANT VF",
 "FIN_BONPLAN": "2016-06-30",
 "TITRE_BONPLAN": "1 Café offert pour 1 Menu Burger acheté pour tout règlement en SoNantes !",
 "DESCRIPTION": "<p>Venez déguster chez VF le plus Français des Burgers ! Grâce à votre réglement en Sonantes profitez d'1 café offert pour 1 Menu Burger acheté (hors menu enfant). Sur place ou à emporter. Ouvert 7 j/7 de 11h30 à 23h </p>",
 "DEBUT_BONPLAN": "2016-01-20"
	},
*/

class Deal: NSObject {
    var dealName : String = ""
    var dealTitle : String = ""
    var dealDescription : String = ""
    var dealStartDate : NSDate = NSDate()
    var dealEndDate : NSDate = NSDate()
    
    // Les valeurs attribuées ci-dessus permettent de se passer de constructeur...
    
    
    init(myDictionary : Dictionary<String, String>) { // Tous les constructeurs s'appellent init(). Appelé par Deal(un_dictionnaire). Deal.init() n'existe pas...
        
        super.init()    // initialise mon daron = NSObject()
        
        self.dealName = Parser.parseString(myDictionary, key: "NOM")
        self.dealTitle = Parser.parseString(myDictionary, key: "TITRE_BONPLAN")
        self.dealDescription = Parser.parseString(myDictionary, key: "DESCRIPTION")
        self.dealStartDate = Parser.parseDate(myDictionary, key: "DEBUT_BONPLAN")
        self.dealEndDate = Parser.parseDate(myDictionary, key: "FIN_BONPLAN")
    }
    
    override init() {
        super.init()
    }
}
