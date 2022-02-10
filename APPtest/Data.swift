//
//  Data.swift
//  APPtest
//
//  Created by ЛИС on 08.02.2022.
//

import Foundation


class data{
func peopleloginData(){
    var arrayPeople: [String] = []
    arrayPeople.append(UserDefaults.standard.string(forKey: "text") ?? "Unknown")
    let textPeople = UserDefaults.standard.string(forKey: "text")
  
   var auth = true
    for item in arrayPeople {
        if item == textPeople {
           auth = true
            UserDefaults.standard.set(auth, forKey: "authSession")
            
        }else{
            auth = true
            UserDefaults.standard.set(auth, forKey: "authSession")
            
        }
        
    }
    
   
    

}
}

