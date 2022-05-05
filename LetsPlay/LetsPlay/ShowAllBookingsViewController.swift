//
//  ShowBookingsViewController.swift
//  LetsPlay
//
//  Created by Jadhav,Preethi Eshwarlal on 5/3/22.
//

import UIKit


class ShowAllBookingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var bookingDataOfUser : [Booking] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookingDataOfUser.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = bookingInfoTable.dequeueReusableCell(withIdentifier: "bookingInfoCell", for: indexPath)
        
//        cell.textLabel?.text = bookingData[indexPath.row].bookingVenue + " at " + bookingData[indexPath.row].bookingTime
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        cell.textLabel?.text = bookingDataOfUser[indexPath.row].bookingVenue + " at " + bookingDataOfUser[indexPath.row].bookingTime + " on " + dateFormatter.string(from: bookingDataOfUser[indexPath.row].bookingDate)
        
        return cell
    }
    


    @IBOutlet weak var bookingInfoTable: UITableView!
    
  // var bookingDt :[Booking] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bookingDataOfUser = bookingData.filter{$0.userId == currentLoggedInUser}

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isHidden = false
        bookingInfoTable.delegate = self
        bookingInfoTable.dataSource = self
        
       self.title = "Your Bookings"

    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "showConfirmation"{
            let destination = segue.destination as! ConfirmViewController
            let data = bookingDataOfUser[(bookingInfoTable.indexPathForSelectedRow!.row) ?? 0];
            destination.bookingDetails = data
        }
    }
}
