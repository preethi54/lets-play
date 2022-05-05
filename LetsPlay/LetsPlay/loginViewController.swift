//
//  ViewController.swift
//  LetsPlay
//
//  Created by Naramsetty,Jayanth on 4/4/22.
//

import UIKit

class loginViewController: UIViewController {
    @IBOutlet weak var userNameOutlet: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    
    @IBOutlet weak var imageLogo: UIImageView!
    @IBOutlet weak var errorMessageOutlet: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imageLogo.image = UIImage(named: "logo-letsplay");
      
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        userNameOutlet.text = "";
        passwordOutlet.text = "";
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

    @IBAction func onSigninClick(_ sender: UIButton) {
       
    }
    @IBAction func onRegisterHereClick(_ sender: UIButton) {
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(identifier == "dashboardSegue"){
        if(users.count > 0){
            print(userNameOutlet.text!)
            let users = users.filter{$0.userName == userNameOutlet.text!}
            var userDetails = User(userId: "", userName: "", userEmail: "", userPassword: "", userPhone: "");
            if(!(users.count > 0)){
                showAlert(title: "Error", message: "Invalid User Name", isAction: false)
                return false;
            }
            userDetails = users[0]
            
            print(userDetails);
            if(userDetails != nil && userDetails.userName == userNameOutlet.text! && userDetails.userPassword == passwordOutlet.text!){
                showAlert(title: "Success", message: "Successfully Logged In", isAction: false)
                currentLoggedInUser = userDetails.userId;
                return true;
            }
            else{
                showAlert(title: "Invalid Credentials", message: "Username or password is incorrect", isAction: false);
                return false;
            }
            
        }
        else{
            showAlert(title: "Invalid Credentials", message: "Username or password is incorrect", isAction: false);
            return false;
        }
           
        }
        else{
            return true;
        }
    }

}

