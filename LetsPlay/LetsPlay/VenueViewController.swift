//
//  venueController.swift
//  LetsPlay
//
//  Created by Mallampati,Sreebharath on 4/7/22.
//

import UIKit

class VenueViewController: UIViewController {

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

extension VenueViewController: UICollectionViewDataSource,UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DetailCollectionViewCell
        cell?.imgOutlet.image = UIImage(named: imgArray[indexPath.row])
        return cell!
    }
    
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 475, height: 275);
        }
}
