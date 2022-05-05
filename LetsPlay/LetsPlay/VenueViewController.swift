//
//  venueController.swift
//  LetsPlay
//
//  Created by Mallampati,Sreebharath on 4/7/22.
//

import UIKit
import MapKit
import CoreLocation

class VenueViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
 
    @IBOutlet weak var venueDescriptionOutlet: UITextView!
    var venueInfo : Playground? = nil
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return venueInfo?.playgroundImages.count ?? 0;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "moreImages", for: indexPath) as! DetailCollectionViewCell
        
        cell.configure(image: (UIImage(named: (venueInfo?.playgroundImages)![indexPath.row])));
        
        return cell
    }
    
    func navigateToMap(){
        let coordinate = CLLocationCoordinate2DMake((venueInfo?.longitude)!,(venueInfo?.latitude)!)
        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
        mapItem.name = "Target location"
        mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
    }

    @IBAction func navigateToLoaction(_ sender: Any) {
        navigateToMap();
    }
    
    @IBOutlet weak var playGroundNameOutlet: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    let imgArray = [ "b1",
                    "b2",
                    "b3",
                     "b4",
                    "b5",
                    "b6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self;
        collectionView.dataSource = self;
        
        self.navigationController?.navigationBar.isHidden = false
        
        self.title = venueInfo?.playgroundName
        venueDescriptionOutlet.text = venueInfo?.playgrroundDesc ?? ""
        playGroundNameOutlet.text = venueInfo?.playgroundName ?? ""
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "bookingViewSegue"{
            let destination = segue.destination as! BookingViewController
            destination.playGroundSelected = venueInfo
        }
    }

}


