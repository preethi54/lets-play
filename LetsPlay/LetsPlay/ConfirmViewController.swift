//
//  ConfirmViewController.swift
//  LetsPlay
//
//  Created by Mallampati,Sreebharath on 4/7/22.
//

import UIKit

class ConfirmViewController: UIViewController {

    var bookingDetails : Booking = Booking(userId: "", bookingId: "", bookingDate: Date(), bookingTime: "", bookingVenue: "", bookingCategory: "")
    @IBOutlet weak var bookingDateOutlet: UILabel!
    @IBOutlet weak var bookingTimeOutlet: UILabel!
    @IBOutlet weak var numberofPeopleOutlet: UILabel!
    @IBOutlet weak var locationOutlet: UILabel!
    @IBOutlet weak var venueOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bookingData.append(bookingDetails);
        print(bookingData);
        venueOutlet.text = "Venue: \(bookingDetails.bookingVenue)"
        locationOutlet.text = "Location: \(bookingDetails.bookingVenue)"
        numberofPeopleOutlet.text = "Number of People: 2"
        bookingTimeOutlet.text = "Booking Time: \(bookingDetails.bookingTime)"
        bookingDateOutlet.text = "Booking Date: \(bookingDetails.bookingDate)"
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
