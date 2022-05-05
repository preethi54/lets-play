//
//  DashboardViewController.swift
//  LetsPlay
//
//  Created by Mallampati,Sreebharath on 4/7/22.
//

import UIKit

class Ground  {
    var name  = ""
    var path = ""
    var price = 0.0
    var latitude = ""
    var longitude = ""
    var timings = ""
    var img = ""
    
    init(name : String,path :String ,price : Double,latitude :String,longitude : String,timings: String, img:String){
        self.name = name;
        self.price = price;
        self.path = path;
        self.latitude = latitude
        self.longitude = longitude
        self.timings = timings
        self.img = img
        
    }
}


class DashboardViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource  {
    
    let offerImageArray = [ "OF1",
                       "OF2",
                       "OF3",
                       "OF4",
                       "OF5"]
    

    

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var offersCollectionView: UICollectionView!
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    @IBOutlet weak var proLevelOutlet: UILabel!
    @IBOutlet weak var showBookingButton: UIButton!
    
    var productsArray = [Ground]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        offersCollectionView.delegate = self;
        offersCollectionView.dataSource = self;
 
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        collectionViewOutlet.backgroundColor = UIColor.clear.withAlphaComponent(0)
        self.navigationItem.setHidesBackButton(true, animated: true);
        self.navigationController?.navigationBar.isHidden = true
        userName.text = "Hi!! \(users.filter{$0.userId == currentLoggedInUser}[0].userName)"
        let bookingCounts = getBookingCount(userId: currentLoggedInUser)
        showBookingButton.setTitle("\(bookingCounts) Booking\(bookingCounts == 0 ? "" : "s")", for: .normal)
        
        if(bookingCounts > 4){
            proLevelOutlet.text = "Pro Member"
        }
        else if (bookingCounts > 3){
            proLevelOutlet.text = "Intermediate"
        }
        else{
            proLevelOutlet.text = "Beginner"
        }
        
    }
    
    
    func getBookingCount(userId:String) -> Int {
        if(bookingData.count == 0){
            return 0;
        }
        else{
            return bookingData.filter{$0.userId == userId}.count;
        }
        return 0;
    }
   
    @IBAction func logoutButtonClicked(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        self.navigationController?.navigationBar.isHidden = true
        let objSomeViewController = storyBoard.instantiateViewController(withIdentifier: "loginViewControllerID") as! loginViewController
        self.navigationController?.pushViewController(objSomeViewController, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            if(collectionView == offersCollectionView ){
               
                return offerImageArray.count;

            }
                return data1.count;
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

            if(collectionView == collectionViewOutlet){
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dashboardCell", for: indexPath) as! TileCollectionViewCell;
                cell.configure(image: UIImage(named: data1[indexPath.row].playgroundIcon) ?? UIImage(named: "b1")!);
                return cell;
            }
            let cell = offersCollectionView.dequeueReusableCell(withReuseIdentifier: "offersCell", for: indexPath) as! OffersCollectionViewCell
            
            cell.configure(with: UIImage(named: offerImageArray[indexPath.row])!);
            
            return cell

        }
    var selectedCell :Int? = nil
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            if(collectionView == collectionViewOutlet){
                selectedCell = indexPath.row;
               // self.performSegue(withIdentifier: "venueInfoSegue", sender: data1[indexPath.row])
        
            }
        else{
            return;
        }

    }
  
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        if self.isMovingFromParent {
            userName.text = "Hi!! \(users.filter{$0.userId == currentLoggedInUser}[0].userName)"
            let bookingCounts = getBookingCount(userId: currentLoggedInUser)
            showBookingButton.setTitle("\(bookingCounts) Booking\(bookingCounts == 0 ? "" : "s")", for: .normal)
            
            if(bookingCounts > 4){
                proLevelOutlet.text = "Pro Member"
            }
            else if (bookingCounts > 3){
                proLevelOutlet.text = "Intermediate"
            }
            else{
                proLevelOutlet.text = "Beginner"
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("hit")
        let transition = segue.identifier
        if transition == "venueInfoSegue"{
            if let destination = segue.destination as? VenueViewController {
                if let paths = collectionViewOutlet?.indexPathsForSelectedItems {
                    let row = paths[0].row
                    print(data1[row])
                    destination.venueInfo = data1[row]
                }
            }
        }
    }


}


