//
//  WebService.swift
//  GoodNews
//
//  Created by Puspank Kumar on 05/01/20.
//  Copyright © 2020 Puspank Kumar. All rights reserved.
//

import Foundation

class WebService {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> Void) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print("error ", error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                print("data", articleList?.articles)
            }
        }.resume()
    }
    
}
