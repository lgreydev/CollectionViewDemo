//
//  DemoData.swift
//  CollectionViewDemo
//
//  Created by Sergey Lukaschuk on 05.04.2022.
//

import Foundation

struct Movie {
    let title: String
    let rating: String

    static var all = [
        Movie(title: "The Shawshank Redemption (1994)", rating: "⭐️ 9,2"),
        Movie(title: "The Godfather (1972)", rating: "⭐️ 9,2"),
        Movie(title: "The Dark Knight (2008)", rating: "⭐️ 9,0"),
        Movie(title: "12 Angry Men (1957)", rating: "⭐️ 9,0"),
        Movie(title: "Schindler's List (1993)", rating: "⭐️ 8,9"),
        Movie(title: "Pulp Fiction (1994)", rating: "⭐️ 8,9"),
        Movie(title: "Forrest Gump (1994)", rating: "⭐️ 8,8"),
        Movie(title: "Inception (2010)", rating: "⭐️ 8,7"),
        Movie(title: "The Matrix (1999)", rating: "⭐️ 8,7"),
    ]
}
