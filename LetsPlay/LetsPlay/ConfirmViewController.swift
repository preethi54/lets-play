//
//  ConfirmViewController.swift
//  LetsPlay
//
//  Created by Mallampati,Sreebharath on 4/7/22.
//

import UIKit

class ConfirmViewController: UIViewController {

    var bookingDetails : Booking = Booking(userId: "", bookingId: "", bookingDate: Date(), bookingTime: "", bookingVenue: "", bookingCategory: "", playersNumber: "", address:"")
    @IBOutlet weak var bookingDateOutlet: UILabel!
    @IBOutlet weak var bookingTimeOutlet: UILabel!
    @IBOutlet weak var numberofPeopleOutlet: UILabel!
    @IBOutlet weak var locationOutlet: UILabel!
    @IBOutlet weak var venueOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        print(bookingData);
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        venueOutlet.text = "Venue: \(bookingDetails.bookingVenue)"
        locationOutlet.text = "Location: \(bookingDetails.address)"
        numberofPeopleOutlet.text = "Number of People: \(bookingDetails.playersNumber)"
        bookingTimeOutlet.text = "Booking Time: \(bookingDetails.bookingTime)"
        bookingDateOutlet.text = "Booking Date: \(dateFormatter.string(from: bookingDetails.bookingDate))"
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func navigateToHome(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        self.navigationController?.navigationBar.isHidden = true
        let objSomeViewController = storyBoard.instantiateViewController(withIdentifier: "DashboardViewControllerID") as! DashboardViewController
        self.navigationController?.pushViewController(objSomeViewController, animated: true)
    }
    
    @IBAction func navigateToBookings(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let objSomeViewController = storyBoard.instantiateViewController(withIdentifier: "ShowAllBookingsViewControllerID") as! ShowAllBookingsViewController
        self.navigationController?.pushViewController(objSomeViewController, animated: true)
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


extension Date {
    public func removeTimeStamp(fromDate: Date) -> Date {
        guard let date = Calendar.current.date(from: Calendar.current.dateComponents([.year, .month, .day], from: fromDate)) else {
            fatalError("Failed to strip time from Date object")
        }
        return date
    }
}
