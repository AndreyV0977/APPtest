//
//  DataApi.swift
//  Map
//
//  Created by Компьютер on 16.03.2022.
//

import Foundation
import Alamofire
import SwiftyJSON


class DataApi {
    var urls = "https://dog.ceo/api/breeds/list/all"

    
    /*func getAnimal(url: String) {
        AF.request(url).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                
                let jdata = json
                UserDefaults.standard.set(jdata, forKey: "DataJ")
                print(json)
                print("lox")
            case .failure(let error):
                print(error)
                
            }
            
        }
    }*/
    
    let Animal = {(url: String) in
        AF.request(url).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                
                print(json)
               
            case .failure(let error):
                print(error)
                
            }
            
        }
    }
}
