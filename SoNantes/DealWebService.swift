//
//  DealWebService.swift
//  SoNantes
//
//  Created by Igor Stark on 28/06/2016.
//  Copyright © 2016 Igor Stark. All rights reserved.
//

import UIKit

class DealWebService: NSObject {
    
    static func GET(parameters : Dictionary<String, String>) -> Array<Deal> {
        // On ne se sert pas des paramètres pour le moment.
        
        
        //let url = "http://data.paysdelaloire.fr/api/publication/24440040400129_SON_SON_00192/Bonsplans_Sonantes_STBL/content"
        
        
        
        let params1 = ["NOM": "AB PLOMBERIE",
                       "FIN_BONPLAN": "2016-12-31",
                       "TITRE_BONPLAN": "DEPLACEMENT OFFERT POUR TOUT PAIEMENT EN SONANTES !",
                       "DESCRIPTION": "<p>Pour votre première intervention de plomberie réglée en Sonantes, Ab Plomberie vous offre le déplacement.Vive les circuits courts ! ;)</p>",
                       "DEBUT_BONPLAN": "2015-09-04"]
        
        let params2 = ["NOM": "RESTAURANT VF",
                       "FIN_BONPLAN": "2016-06-30",
                       "TITRE_BONPLAN": "1 Café offert pour 1 Menu Burger acheté pour tout règlement en SoNantes !",
                       "DESCRIPTION": "<p>Venez déguster chez VF le plus Français des Burgers ! Grâce à votre réglement en Sonantes profitez d'1 café offert pour 1 Menu Burger acheté (hors menu enfant). Sur place ou à emporter. Ouvert 7 j/7 de 11h30 à 23h </p>",
                       "DEBUT_BONPLAN": "2016-01-20"]
        
        return [Deal(myDictionary: params1), Deal(myDictionary: params2)] // Retourne bien un tableau de Deal(s)
        
    }
}
