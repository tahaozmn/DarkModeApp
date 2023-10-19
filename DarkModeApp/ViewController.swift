//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Taha Özmen on 19.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*
         
         Kullanıcı temayı ne şekilde ayarlarsa ayarlasın uygulamanızın her halükarda sizin seçtiğiniz temada çalışması için bu kodu kullanın...
         
        overrideUserInterfaceStyle = .light
         
         */
        
         
         
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        let userStyle = traitCollection.userInterfaceStyle
        
        if userStyle == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }
    
    

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userStyle = traitCollection.userInterfaceStyle
        
        if userStyle == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }
    
    

}

