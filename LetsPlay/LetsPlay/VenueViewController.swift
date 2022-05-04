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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArray.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "moreImages", for: indexPath) as! DetailCollectionViewCell
        
        cell.configure(with: UIImage(named: imgArray[indexPath.row])!);
        
        return cell
    }
    
    func navigateToMap(){
        let coordinate = CLLocationCoordinate2DMake(40.3589785,-94.883186)
        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
        mapItem.name = "Target location"
        mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
    }

    @IBAction func navigateToLoaction(_ sender: Any) {
        navigateToMap();
    }
    
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
        self.title = "PlayGround Details"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


