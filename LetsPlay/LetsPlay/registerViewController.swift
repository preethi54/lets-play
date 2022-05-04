//
//  registerViewController.swift
//  LetsPlay
//
//  Created by Naramsetty,Jayanth on 4/4/22.
//

import UIKit
import SwiftUI

class registerViewController: UIViewController {
    
    
    @IBOutlet weak var userNameOutlet: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    @IBOutlet weak var confirmPasswordOutlet: UITextField!
    @IBOutlet weak var phoneOutlet: UITextField!
    @IBOutlet weak var emailOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func showAlert(title: String, message:String, isAction: Bool){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
       
            let OKAction = UIAlertAction(title: "OK", style: .default) {
                (action: UIAlertAction!) in
            }
            alertController.addAction(OKAction)
        DispatchQueue.main.async(execute: {
                  self.present(alertController, animated: true)
              })

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
    
    
    @IBAction func onRegisterNowClick(_ sender: Any) {
            if(userNameOutlet.text == nil || userNameOutlet.text == "" ||
               passwordOutlet.text == nil || passwordOutlet.text == "" ||
               confirmPasswordOutlet.text == nil || confirmPasswordOutlet.text == "" ||
               phoneOutlet.text == nil || phoneOutlet.text == "" ||
               emailOutlet.text == nil || emailOutlet.text == ""
            ){
                showAlert(title: "Required", message: "Please enter all the required fields", isAction: true);
                return;
            }
            
            else if(confirmPasswordOutlet.text! != passwordOutlet.text!){
                showAlert(title: "Password Mis-match", message: "Confirm Password and Password didn't match", isAction: true);
                return;
            }
            let userId : String = randomNameString(length: 4);
            let userDetails: User = User(
                userId: userId, userName: userNameOutlet.text!, userEmail: emailOutlet.text!, userPassword: passwordOutlet.text!, userPhone: phoneOutlet.text!);
            showAlert(title: "Successfully Registered", message: "User Registered Successfully", isAction: false);
            users.append(userDetails);
            self.navigationController?.popViewController(animated: true)
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
