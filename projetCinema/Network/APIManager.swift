//
//  APIManager.swift
//  tpMovie
//
//  Created by vanhouta on 18/05/2021.
//

import Foundation

struct APIManager {
    static var shared = APIManager()
    
    let baseUrl = "https://api.themoviedb.org/3"
    let apiKey = "83f72c3fe12cdc0baf1ebdae3f193996"
    let imageBaseUrl = "https://image.tmdb.org/t/p/"
    

    // Créer une url avec le type de données voulu et les paramètres de la requête
    func buildUrl(path: Type, queryParams: [URLQueryItem]? = nil) -> URLComponents? {
        
        var url = URLComponents(string: "\(self.baseUrl)\(path.rawValue)")
        
        url?.queryItems = [
            URLQueryItem(name: "api_key", value: self.apiKey),
            URLQueryItem(name: "language", value: "fr-FR")
        ]
        
        if let params = queryParams {
            url?.queryItems! += params
        }
        
        return url
    }
}


// Les différents types de données pour la fonction buildUrl()
enum Type: String {
    
    case list = "/discover/movie"
    case details = "/movie/"
    case categories = "/genre/movie/list"
    
}
