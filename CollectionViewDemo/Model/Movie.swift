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
    let covers: [Cover]

    static var all = [
        Movie(title: "The Shawshank Redemption (1994)", rating: "⭐️ 9,2", covers: [Cover(image: "1")]),
        Movie(title: "The Godfather (1972)", rating: "⭐️ 9,2", covers: [Cover(image: "2")]),
        Movie(title: "The Dark Knight (2008)", rating: "⭐️ 9,0", covers: [Cover(image: "3")]),
        Movie(title: "12 Angry Men (1957)", rating: "⭐️ 9,0", covers: [Cover(image: "4")]),
        Movie(title: "Schindler's List (1993)", rating: "⭐️ 8,9", covers: [Cover(image: "5")]),
        Movie(title: "Pulp Fiction (1994)", rating: "⭐️ 8,9", covers: [Cover(image: "6")]),
        Movie(title: "Forrest Gump (1994)", rating: "⭐️ 8,8", covers: [Cover(image: "7")]),
        Movie(title: "Inception (2010)", rating: "⭐️ 8,7", covers: [Cover(image: "8")]),
        Movie(title: "The Matrix (1999)", rating: "⭐️ 8,7", covers: [Cover(image: "9")]),
    ]
}
