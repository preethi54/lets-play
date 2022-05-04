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
    

    
    @IBOutlet weak var offersCollectionView: UICollectionView!
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    var productsArray = [Ground]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        offersCollectionView.delegate = self;
        offersCollectionView.dataSource = self;
        
        
//        collectionViewOutlet.register(TileCollectionViewCell.nib(), forCellWithReuseIdentifier: "TileCollectionViewCell")
        
//        collectionViewOutlet.register(ButtonCollectionViewCell.nib(), forCellWithReuseIdentifier: "ButtonCollectionViewCell")
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        collectionViewOutlet.backgroundColor = UIColor.clear.withAlphaComponent(0)
//        let layout = UICollectionViewFlowLayout();
////        layout.itemSize = CGSize(width: 100, height: 100);
//        collectionViewOutlet.collectionViewLayout = layout;
        productsArray  = [Ground(name: "Ground1", path: "", price: 34.7, latitude: "", longitude: "", timings: "9AM-5PM", img: "badminton"),
        Ground(name: "Ground2", path: "", price: 45.2, latitude: "", longitude: "", timings: "10AM-6PM", img: "BasketBall"),
        Ground(name: "Ground3", path: "", price: 40.50, latitude: "", longitude: "", timings: "5AM-11AM & 4PM-6PM", img: "Cricket"),
        Ground(name: "Ground3", path: "", price: 40.50, latitude: "", longitude: "", timings: "5AM-11AM & 4PM-6PM", img:"FootBall"),
        Ground(name: "Ground2", path: "", price: 45.2, latitude: "", longitude: "", timings: "10AM-6PM", img:"Golf"),
        Ground(name: "Ground3", path: "", price: 40.50, latitude: "", longitude: "", timings: "5AM-11AM & 4PM-6PM", img: "Soccer"),
        Ground(name: "Ground3", path: "", price: 40.50, latitude: "", longitude: "", timings: "5AM-11AM & 4PM-6PM", img:"Squash"),
        Ground(name: "Ground3", path: "", price: 40.50, latitude: "", longitude: "", timings: "5AM-11AM & 4PM-6PM", img:"Swimming"),
        Ground(name: "Ground3", path: "", price: 40.50, latitude: "", longitude: "", timings: "5AM-11AM & 4PM-6PM", img:"Swimming"),
        Ground(name: "Ground3", path: "", price: 40.50, latitude: "", longitude: "", timings: "5AM-11AM & 4PM-6PM", img:"TableTennis"),
        Ground(name: "Ground3", path: "", price: 40.50, latitude: "", longitude: "", timings: "5AM-11AM & 4PM-6PM", img:"Tennis"),
        Ground(name: "Ground3", path: "", price: 40.50, latitude: "", longitude: "", timings: "5AM-11AM & 4PM-6PM", img:"volleyball"),
        Ground(name: "Ground2", path: "", price: 45.2, latitude: "", longitude: "", timings: "10AM-6PM", img:"Golf"),
        Ground(name: "Ground3", path: "", price: 40.50, latitude: "", longitude: "", timings: "5AM-11AM & 4PM-6PM", img: "Soccer"),
        Ground(name: "Ground3", path: "", price: 40.50, latitude: "", longitude: "", timings: "5AM-11AM & 4PM-6PM", img:"Squash")

        ]
        // Do any additional setup after loading the view.
    }
    
   
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            if(collectionView == offersCollectionView ){
               
                return offerImageArray.count;

            }
            //else if(collectionView == collectionView){
                return productsArray.count;

           // }
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           // if(collectionView == offersCollectionView ){

           //}else
            if(collectionView == collectionViewOutlet){
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dashboardCell", for: indexPath) as! TileCollectionViewCell;
                
        //        let btnCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtonCollectionViewCell", for: indexPath) as! ButtonCollectionViewCell;
                
                cell.configure(with: UIImage(named: productsArray[indexPath.row].img)!);
        //        btnCell.configure(with: productsArray[indexPath.row].name);
        //        btnCell.buttonOutlet.tag = indexPath.row
               
        //        cell.addSubview(editButton)
                return cell;
            }
            let cell = offersCollectionView.dequeueReusableCell(withReuseIdentifier: "offersCell", for: indexPath) as! OffersCollectionViewCell
            
            cell.configure(with: UIImage(named: offerImageArray[indexPath.row])!);
            
            return cell

        }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(collectionView == collectionViewOutlet){

        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if(transition == "showBookingSegue"){
            let destination = segue.destination as! ShowBookingsViewController
            
           // destination.bookingData = Booking([])
            
        }
    }


}


