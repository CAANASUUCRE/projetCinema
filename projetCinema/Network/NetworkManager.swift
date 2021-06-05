//
//  NetworkManager.swift
//  tpMovie
//
//  Created by vanhouta on 18/05/2021.
//

import Foundation
import UIKit

struct NetworkManager {
    
    static var shared = NetworkManager()
    let session = URLSession.shared
    
    //Récupération de données
    func fetchData(_ url: URL, completion: @escaping (Data) -> ()) -> Void {
        
        self.session.dataTask(with: url, completionHandler: { (data, response, error) in
            
            guard error == nil else {
                return
            }
            
            if let data = data {
                completion(data)
            }
            
        }).resume()
    }
}
