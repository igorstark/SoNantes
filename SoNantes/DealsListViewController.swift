//
//  DealsListViewController.swift
//  SoNantes
//
//  Created by Igor Stark on 28/06/2016.
//  Copyright © 2016 Igor Stark. All rights reserved.
//

import UIKit

class DealsListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate { // Les 2 derniers sont des protocoles
    // Prorpiété ci-dessous créée par drag and drop (bouton droit) de la Table View ici
    @IBOutlet weak var myDealTableView: UITableView!
    var myDealsList : Array<Deal> = Array<Deal>()
    
    let pushDealDetailSegue = "pushDealDetailSegue"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myDealTableView.delegate = self // Le délégué est la classe DealsListViwController elle-même
        self.myDealTableView.dataSource = self
        
        self.myDealsList = DealWebService.GET(Dictionary<String, String>())
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Rédéfinition ==> UITableViewDelegate
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let myCell : UITableViewCell = UITableViewCell()
        let myDeal : Deal = myDealsList[indexPath.row]
        
        myCell.textLabel?.text = myDeal.dealTitle
        myCell.detailTextLabel?.text = myDeal.dealDescription
        return myCell
    }
    
    // Redéfinition ==> dans DataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myDealsList.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier(pushDealDetailSegue, sender: self)
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == pushDealDetailSegue, // Est-ce le bon segment cible ?
            let destinationVC = segue.destinationViewController as? DealDetailVC, // La ViewController qui va être affichée est-elle bien DealDetailVC ?
            let selectedDealRow = myDealTableView.indexPathForSelectedRow?.row // Peut-on récupérer l'index de la cellule sélectionnée ?
        {
            destinationVC.myDeal = self.myDealsList[selectedDealRow]
        }
        
    }

}






