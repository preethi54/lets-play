//
///
//  ViewController.swift
//  Letsplay2
//
//  Created by Devanaboyina,Maneesh on 4/4/22.
//

import UIKit


class BookingViewController: UIViewController, UICollectionViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource  {
 
    @IBOutlet weak var datePicker: UIDatePicker!
    var currentIndexPath : IndexPath? = nil;
    @IBOutlet weak var collectionView: UICollectionView!
    var selectedTime = "";
    let people = ["1","2","3","4"]
    
    @IBOutlet weak var proceedBtnOutlet: UIButton!
    @IBOutlet weak var venuCollection: UICollectionView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var playGroundSelected: Playground?
    
    var arrayOfInts = ["5AM-6AM", "6AM-7AM","7AM-8AM","8AM-9AM","9AM-10AM","10AM-11AM","11AM-12PM","12PM-1PM","1PM-2PM","2PM-3PM","3PM-4PM","4PM-5PM","5PM-6PM","6PM-7PM","7PM-8PM","8PM-9PM","9PM-10PM","10PM-11PM"]
    
    
    @IBOutlet weak var venueNameOutlet: UILabel!
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
   
    // to show only calander no time
    datePicker.datePickerMode = .date
    collectionView.delegate=self
    collectionView.dataSource=self
    collectionView.backgroundColor = UIColor.clear.withAlphaComponent(0)
    
    pickerView.delegate = self
    pickerView.dataSource = self
    
    venuCollection.delegate = self;
    venuCollection.dataSource = self;
    
    venueNameOutlet.text = playGroundSelected?.playgroundName
    
        proceedBtnOutlet.isEnabled = false
}
    
    @IBAction func datePickerChanged(_ sender: Any) {
    
    let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy"
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        collectionView.isHidden = false
        collectionView.reloadData();
}
    
    @objc(numberOfComponentsInPickerView:) func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
        
    @objc func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return people.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return people[row]
    }
    
    func randomNameString(length: Int)->String{
        
        enum s {
            static let c = Array("abcdefghjklmnpqrstuvwxyz12345789")
            static let k = UInt32(c.count)
        }
        
        var result = [Character](repeating: "-", count: length)
        
        for i in 0..<length {
            let r = Int(arc4random_uniform(s.k))
            result[i] = s.c[r]
        }
        
        return String(result)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier;
        if transition == "confirmationSegue"{
            let destination = segue.destination as! ConfirmViewController;
            let bookingId = randomNameString(length: 6)
            print(selectedTime)
           var bookingInfo =  Booking(userId: currentLoggedInUser, bookingId: bookingId, bookingDate: datePicker.date, bookingTime: selectedTime, bookingVenue: playGroundSelected!.playgroundName , bookingCategory: "", playersNumber: people[pickerView.selectedRow(inComponent: 0)], address:playGroundSelected!.address)
            bookingData.append(bookingInfo)
            destination.bookingDetails = bookingInfo
            
        }
    }

}



extension BookingViewController: UICollectionViewDataSource{
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    if(collectionView == venuCollection){
        return (playGroundSelected?.playgroundImages)!.count
        
    }
    return 18
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if(collectionView == venuCollection){
        
        let cell = venuCollection.dequeueReusableCell(withReuseIdentifier: "venuImage", for: indexPath) as! VenuImageCollectionViewCell
        
        cell.configure(image: UIImage(named: (playGroundSelected?.playgroundImages)![indexPath.row]));
        return cell
    }
    
    let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "timingCell", for: indexPath) as! TimingCollectionViewCell
    cell.setButtonTitle(arrayOfInts[indexPath.row]);
    cell.adjustButtonSize();
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .long
    dateFormatter.timeStyle = .none
    print(bookingData)
    for item in bookingData {
        if((playGroundSelected?.playgroundName)! == item.bookingVenue && (item.bookingTime) == arrayOfInts[indexPath.row] && dateFormatter.string(from: datePicker.date) == dateFormatter.string(from: item.bookingDate)){
            cell.disableButton();
        }
    }
   
    
    return cell
    }
    

  
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        if(bookingData.count > 0){
            let currentBooking = arrayOfInts[indexPath.row];
            let resultArray = bookingData.filter {
                $0.bookingTime == currentBooking &&
                (playGroundSelected?.playgroundName)! == $0.bookingVenue &&
                dateFormatter.string(from: datePicker.date) == dateFormatter.string(from: $0.bookingDate)
                            }
            if(resultArray.count > 0){
                return;
            }
        }
     
        
        proceedBtnOutlet.isEnabled = true
        if(currentIndexPath != nil){
            let currentCell = collectionView.cellForItem(at: currentIndexPath ?? indexPath) as! TimingCollectionViewCell
            currentCell.adjustButtonSize();
        }
        currentIndexPath = indexPath;
        let cell = collectionView.cellForItem(at: indexPath) as! TimingCollectionViewCell
        selectedTime = arrayOfInts[indexPath.row]
        print(selectedTime)
        cell.setButtonSelected();
    }
}

