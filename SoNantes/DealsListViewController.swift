//
//  DealsListViewController.swift
//  SoNantes
//
//  Created by Igor Stark on 28/06/2016.
//  Copyright © 2016 Igor Stark. All rights reserved.
//

import UIKit

class DealsListViewController: UIViewController {
    // Prorpiété ci-dessous créée par drag and drop (bouton droit) de la Table View ici
    @IBOutlet weak var myDealTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
