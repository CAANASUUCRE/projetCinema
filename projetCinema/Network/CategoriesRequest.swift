//
//  CategoriesRequest.swift
//  tpMovie
//
//  Created by vanhouta on 18/05/2021.
//

import Foundation

struct CategoriesRequest {
   
    //Récupère les différentes catégories de films
    func getCategoriesList(completion: @escaping ((CategoryResponse?) -> ())) {
        
        let catUrl = APIManager.shared.buildUrl(path: Type.categories, queryParams: nil)
        
        if let url = catUrl?.url {
            NetworkManager.shared.fetchData(url) { data in
                completion(try? JSONDecoder().decode(CategoryResponse.self, from: data))
            }
        }
        
    }
}
