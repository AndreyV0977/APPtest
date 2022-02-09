//
//  ViewController.swift
//  APPtest
//
//  Created by ЛИС on 29.01.2022.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TextFieldTableViewCell.self, forCellReuseIdentifier: "TextFieldTableViewCell")
        
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    enum numberCell: Int{
        case login = 0 , email = 1, password = 2, btn = 3
          
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldTableViewCell") as! TextFieldTableViewCell
            cell.textField.placeholder = "login"
            cell.textField.isHidden = true
            cell.btnLable.isHidden = true
            cell.textlabel.text = "Добро пожаловать"
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldTableViewCell") as! TextFieldTableViewCell
            cell.textField.placeholder = "Логин"
            cell.textlabel.isHidden = true
            cell.btnLable.isHidden = true
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldTableViewCell") as! TextFieldTableViewCell
            cell.textField.placeholder = "Пароль"
            cell.textlabel.isHidden = true
            cell.btnLable.isHidden = true
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldTableViewCell") as! TextFieldTableViewCell
            cell.textField.isHidden = true
            cell.textlabel.isHidden = true
            return cell
        }
    }
}
        /*let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldTableViewCell") as! TextFieldTableViewCell
        return cell
         }*/
    

