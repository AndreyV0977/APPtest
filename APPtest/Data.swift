//
//  Data.swift
//  APPtest
//
//  Created by ЛИС on 08.02.2022.
//

import Foundation


class data{
func peoplelogin(){
    
let name = "andrey"
let pas = "password"
UserDefaults.standard.set(name, forKey: "login")
UserDefaults.standard.set(pas, forKey: "password")

    
    var arrayPeople: [String] = []
    arrayPeople.append(UserDefaults.standard.string(forKey: "login") ?? "Unknown")
    arrayPeople.append(UserDefaults.standard.string(forKey: "password") ?? "Unknown")
    
    var name1 = "Andrey"
   var auth = true
    for (index, value) in arrayPeople.enumerated(){
        if value == name1{
           auth = true
        }else{
            auth = false
        }
        
    }
    
   
    

}
}

