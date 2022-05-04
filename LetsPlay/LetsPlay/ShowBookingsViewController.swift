//
//  ShowBookingsViewController.swift
//  LetsPlay
//
//  Created by Jadhav,Preethi Eshwarlal on 5/3/22.
//

import UIKit

class BookingData{
  //  var OfferName : String?
    var bookingDetail : String?
    init(bookingDetail: String){
      //  self.OfferName = OfferName;
        self.bookingDetail = bookingDetail;
    }
    
}

class ShowBookingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookingDt.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = bookingInfoTable.dequeueReusableCell(withIdentifier: "bookingInfoCell", for: indexPath)
        
//        cell.textLabel?.text = bookingData[indexPath.row].bookingVenue + " at " + bookingData[indexPath.row].bookingTime
        
        cell.textLabel?.text = bookingDt[indexPath.row].bookingDetail
        
        return cell
    }
    

    @IBOutlet weak var bookingInfoTable: UITableView!
    
   var bookingDt :[BookingData] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bookingInfoTable.delegate = self
        bookingInfoTable.dataSource = self
        
       self.title = "Your bookings"
        
//        let d1 = Booking(userId: "123", bookingId: "23asdd", bookingDate: Date().date,  bookingTime: "9AM", bookingVenue: "VenuName", bookingCategory: "w33")
//
        
       // bookingData.append(d1)
        
        let d1 = BookingData(bookingDetail:"booking1");
        
        bookingDt.append(d1)
        let d2 = BookingData(bookingDetail:"booking2");
        
        bookingDt.append(d2)
        
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
