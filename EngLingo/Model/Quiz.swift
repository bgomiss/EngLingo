//
//  Quiz.swift
//  EngLingo
//
//  Created by aycan duskun on 6.11.2022.
//

import Foundation
import UIKit

struct Quiz {
    let text: String
    let answers: [String]
    let rightAnswer: String
    let picture: UIImage
    
    init(q: String, a: [String], correctAnswer: String, photo: UIImage) {
        text = q
        answers = a
        rightAnswer = correctAnswer
        picture = photo
    }
}
