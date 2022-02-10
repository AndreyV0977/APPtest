//
//  ViewController.swift
//  APPtest
//
//  Created by ЛИС on 29.01.2022.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        TableView.register(UINib(nibName: "OneTableViewCell", bundle: nil), forCellReuseIdentifier: "OneTableViewCell")
        TableView.register(UINib(nibName: "TwoTableViewCell", bundle: nil), forCellReuseIdentifier: "TwoTableViewCell")
        TableView.register(UINib(nibName: "ThreeTableViewCell", bundle: nil), forCellReuseIdentifier: "ThreeTableViewCell")
        TableView.register(UINib(nibName: "FourTableViewCell", bundle: nil), forCellReuseIdentifier: "FourTableViewCell")
        
        
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "OneTableViewCell") as! OneTableViewCell
            return cell
    }else if (indexPath.row == 1){
        let cell = tableView.dequeueReusableCell(withIdentifier: "TwoTableViewCell") as! TwoTableViewCell
        return cell
    }else if (indexPath.row == 2){
        let cell = tableView.dequeueReusableCell(withIdentifier: "ThreeTableViewCell") as! ThreeTableViewCell
        return cell
    } else {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FourTableViewCell") as! FourTableViewCell
        return cell
    }
    }
}

func signInWithEmail(email:String, password: String, completion:@escaping (Bool,String) ->Void) {
    Auth.auth().signIn(withEmail: email, password: password) {(res, err) in
        if err != nil{
            completion(false,(err?.localizedDescription)!)
            return
        }
        completion(true,(res?.user.email)!)
    }
}


func signUpWithEmail(email: String, passwor: String, completion: @escaping (Bool, String)->Void){
    Auth.auth().createUser(withEmail: email, password: password) {
        (res,err) in
        if err != nil{
            completion(false,(err?.localizedDescription)!)
            return
        }
        completion(true,(res?.user.email)!)
    }
}
