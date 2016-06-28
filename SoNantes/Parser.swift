//
//  Parser.swift
//  SoNantes
//
//  Created by Igor Stark on 28/06/2016.
//  Copyright © 2016 Igor Stark. All rights reserved.
//

import UIKit

class Parser: NSObject {
    static func parseString(dictionary : Dictionary<String,String>, key : String) -> String {
        let value : String? = dictionary[key]
        if (value != nil) {
            return value!
        }
        return ""
    }
    
    static func parseDate(dictionary : Dictionary<String,String>, key : String) -> NSDate {
        let value : String? = dictionary[key]
        if (value != nil) {
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            let date = dateFormatter.dateFromString(value!)
            return date!
        }
        return NSDate()
    }
}
