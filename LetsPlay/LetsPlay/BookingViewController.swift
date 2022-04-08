//
///
//  ViewController.swift
//  Letsplay2
//
//  Created by Devanaboyina,Maneesh on 4/4/22.
//

import UIKit


class BookingViewController: UIViewController {
 
    @IBOutlet weak var imageViewInfoOutlet: UIImageView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayOfInts = ["5AM-6AM", "6AM-7AM","7AM-8AM","8AM-9AM","9AM-10AM","10AM-11AM","11AM-12PM","12PM-1PM","1PM-2PM","2PM-3PM","3PM-4PM","4PM-5PM","5PM-6PM","6PM-7PM","7PM-8PM","8PM-9PM","9PM-10PM","10PM-11PM"]
    
override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
   
    collectionView.register(TimingCollectionViewCell.nib(), forCellWithReuseIdentifier: "TimingCollectionViewCell")
    collectionView.delegate=self
    collectionView.dataSource=self
    collectionView.backgroundColor = UIColor.clear.withAlphaComponent(0)
    imageViewInfoOutlet.image = UIImage(named: "comingsoon")
    
}
    
    @IBAction func datePickerChanged(_ sender: Any) {
    
    let dateFormatter = DateFormatter()

        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short

        let strDate = dateFormatter.string(from: datePicker.date)
        //datePicker.text = strDate
    
    let date = datePicker.date
 //  if
}


}

extension BookingViewController: UICollectionViewDelegate{

func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    collectionView.deselectItem(at: indexPath, animated: true)
    
}

}

extension BookingViewController: UICollectionViewDataSource{
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 18
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "TimingCollectionViewCell", for: indexPath) as! TimingCollectionViewCell
    
    cell.setButtonTitle(arrayOfInts[indexPath.row]);
        return cell
    }
}




extension BookingViewController: UICollectionViewDelegateFlowLayout{
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: 130, height: 50)
}

}

    
    

  
