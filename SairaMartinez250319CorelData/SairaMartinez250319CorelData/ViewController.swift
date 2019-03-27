//
//  ViewController.swift
//  SairaMartinez250319CorelData
//
//  Created by Universidad Politecnica de Gómez Palacio on 3/25/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func registerUser(_ sender: Any) {
        let dictionary: [String: String] = ["email": "sairabeyakita13@gmail.com","password": "password", "username": "saira"]
        DBLocal.save(for: "User", attributes: dictionary)
        print(DBLocal.retrieve(for: "User"))
    }
    
    @IBAction func retrieverUsers(_ sender: Any) {
        print(DBLocal.retrieve(for: "User"))
    }
    @IBAction func updateUser(_ sender: Any) {
        let dictionary: [String: String] = ["email": "sairabeyakita13@gmail.com","password": "password", "username": "saira"]
        let predicate: NSPredicate = NSPredicate(format: "username = %@","alex")
        DBLocal.save(for: "User", attributes: dictionary, where: predicate)
        print(DBLocal.retrieve(for: "User"))
    }
    
    @IBAction func deleteUser(_ sender: Any) {
        let predicate: NSPredicate = NSPredicate(format: "username = %@","saira")
        DBLocal.delete(for: "User", where: predicate)
        print(DBLocal.retrieve(for: "User"))
    }
}

