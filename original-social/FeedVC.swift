//
//  SignInVCViewController.swift
//  original-social
//
//  Created by Chien Wang on 2/7/17.
//  Copyright © 2017 Chien Wang. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class FeedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
       
    }

    @IBAction func signOutTapped(_ sender: Any) {
        //let keychainResult = KeychainWrapper.removeObjectForKey(KEY_UID)
        let keychainResult = KeychainWrapper.defaultKeychainWrapper.remove(key: KEY_UID)
        print("ID removed from keychain \(keychainResult)")
        try! FIRAuth.auth()?.signOut()
        performSegue(withIdentifier: "goToSignIn", sender: nil)
        
        
    }
    

    
}
