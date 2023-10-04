//
//  BiometricViewController.swift
//  9. Catch the Kenny
//
//  Created by BBPDEV on 04/10/23.
//

import UIKit
import LocalAuthentication

class BiometricViewController: UIViewController {

    @IBOutlet weak var biometricTap: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        biometricTap.isUserInteractionEnabled = true
        let tapped = UITapGestureRecognizer(target: self, action: #selector(tapFaceId))
        biometricTap.addGestureRecognizer(tapped)
     }
    
    
    @IBAction func loginButton(_ sender: UIButton) {
        LoginFaceId()
    }
    
    @objc func tapFaceId(){
        LoginFaceId()
    }
    
    func LoginFaceId(){
        //biometric
        var context = LAContext()
        var error : NSError? = nil
        
        var permissions = context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error)
        if permissions {
            // Proceed to authentication
        }
        else {
            // Handle permission denied or error
        }
        
        let reason = "Log in with Face ID"
        context.evaluatePolicy(
            // .deviceOwnerAuthentication allows
            // biometric or passcode authentication
            .deviceOwnerAuthentication,
            localizedReason: reason
        ) { success, error in
            if success {
                print("success")
                DispatchQueue.main.async {
                    self.performSegue(withIdentifier: "toSecondVC", sender: self)
                }
            } else {
                print("Error")
                // Handle LAError error
            }
        }
    }
    
}
