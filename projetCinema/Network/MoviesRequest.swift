//
//  MoviesRequest.swift
//  tpMovie
//
//  Created by vanhouta on 18/05/2021.
//

import Foundation

struct MoviesRequest {
    
    //Récupère les données de tous les films
    func getMoviesList(page: Int = 1, categoryId: Int? = nil, completion: @escaping ((MovieListResponse?) -> ())) {
        
        var params: [URLQueryItem] = []
        params.append(URLQueryItem(name: "page", value: "\(page)"))
        
        if let category = categoryId {
            params.append(URLQueryItem(name: "with_genres", value: "\(category)"))
        }
        
        let movUrl = APIManager.shared.buildUrl(path: Type.list, queryParams: params)
        
        if let url = movUrl?.url {
            NetworkManager.shared.fetchData(url) { data in
                completion(try? JSONDecoder().decode(MovieListResponse.self, from: data))
            }
        }
    }
    
    // Récupère le détails d'un film
    func getMovieData(id: Int, completion: @escaping ((MovieDetailsResponse?) -> ())) {
        
        var detUrl = APIManager.shared.buildUrl(path: Type.details, queryParams: [
            URLQueryItem(name: "append_to_response", value: "videos")
        ])
        
        detUrl?.path += String(id)
        
        if let url = detUrl?.url {
            NetworkManager.shared.fetchData(url) { data in
                completion(try? JSONDecoder().decode(MovieDetailsResponse.self, from: data))
            }
        }
        
    }
}
