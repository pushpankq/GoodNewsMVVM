//
//  Article.swift
//  GoodNews
//
//  Created by Puspank Kumar on 05/01/20.
//  Copyright © 2020 Puspank Kumar. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    
    let title: String
    let description: String
}
