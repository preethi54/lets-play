//
//  ViewController.swift
//  LetsPlay1
//
//  Created by Devanaboyina,Maneesh on 4/3/22.
//

import UIKit


class Offer{
  //  var OfferName : String?
    var OfferDescription : String?
    
    init(OfferDescription: String){
      //  self.OfferName = OfferName;
        self.OfferDescription = OfferDescription;
    }
}


class OffersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return OffersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //return the cell with data.
        //Create cells dynamically
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //Assign the data to the cell.
       // cell.textLabel?.text = OffersArray[indexPath.row].OfferName
        cell.textLabel?.text = OffersArray[indexPath.row].OfferDescription
       
        return cell
    }
    
    
    var OffersArray = [Offer]()
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
              // Do any additional setup after loading the view.
              
            tableViewOutlet.delegate = self
            tableViewOutlet.dataSource = self
            tableViewOutlet.rowHeight = 100.0
            tableViewOutlet.backgroundColor = UIColor.clear.withAlphaComponent(0)
//        tableViewOutlet.rowHeight = UITableView.automaticDimension
              
                let offer1 = Offer(OfferDescription: "Get 50% off on using HDFC Credit card")
                OffersArray.append(offer1)
              
                let offer2 = Offer(OfferDescription: "Get 100% off on your first booking")
                OffersArray.append(offer2)
            
                let offer3 = Offer(OfferDescription: "Earn a $10 cash rewards bonus after spending $100 on bookings in the first 3 months")
                OffersArray.append(offer3)
        
                let offer4 = Offer(OfferDescription: "Chance to win 100% cashback on a lucky draw everyday")
                OffersArray.append(offer4)
        
                let offer5 = Offer(OfferDescription: "Get 10% off on booking Badminton Ground Everyday")
                OffersArray.append(offer5)
        
                let offer6 = Offer(OfferDescription: "Get $2 off on every booking ")
                OffersArray.append(offer6)
        
                let offer7 = Offer(OfferDescription: "Get 20% off on booking Cricket Ground using ICICI Credi Card")
                OffersArray.append(offer7)
    }
    
}
   
