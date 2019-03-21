//
//  ViewController.swift
//  AlertProject
//
//  Created by Mehmet Doğukan Sevinç on 21.03.2019.
//  Copyright © 2019 Mehmet Doğukan Sevinç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordOne: UITextField!
    @IBOutlet weak var paswordTwo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
        if usernameText.text == "" {
            
            let alert = UIAlertController(title: "Hata", message: "Kullanıcı adı boş.", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert , animated: true , completion: nil)
            
        }
        else if passwordOne.text == ""
        {
            let  alert =  UIAlertController(title: "Hata", message: "Şifren boş", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert,animated: true,completion: nil)
            
            
        }
        else if passwordOne.text != paswordTwo.text{
            let  alert =  UIAlertController(title: "Hata", message: "Şifreler eşleşmiyor.", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert,animated: true,completion: nil)
        }
        else{
            let  alert =  UIAlertController(title: "Hata", message: "Kayıt edildi.", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert,animated: true,completion: nil)
        }
        
        
        
        
    }
    
}

