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
        
        self.navigationItem.hidesBackButton = true
        
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
        let context = LAContext()
        var error : NSError? = nil
        
        //cek permission
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics,
                                     error: &error){
            let reason = "Log in with Face ID"
            context.evaluatePolicy(
                .deviceOwnerAuthenticationWithBiometrics,
                localizedReason: reason
            ) { [weak self] success, error in
                
                guard success, error == nil else {
                    //failed
                    return
                }
                //success
                DispatchQueue.main.async {
                    self!.performSegue(withIdentifier: "toSecondVC", sender: self)
                }
            }
        }
            else {
                // can not use
            }
        }
    }
