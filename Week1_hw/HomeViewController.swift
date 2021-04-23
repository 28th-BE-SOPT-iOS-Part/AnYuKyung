//
//  HomeViewController.swift
//  Week1_hw
//
//  Created by kong on 2021/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var profileButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func profileButtonClicked(_ sender: Any) {
        
                guard let profileVC = self.storyboard?.instantiateViewController(identifier: "ProfileViewController") as? ProfileViewController else { return }
        
        profileVC.modalPresentationStyle = .fullScreen
                self.present(profileVC, animated: true, completion: nil)
    
    }
    
}
