//
//  OcEx2.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeOcEx2() {
    var book: Book? = Book(title: "The Little Prince", author: Author(name: "Antoine de Saint-Exupéry"))

    print(book?.title ?? "unknown")              // The Little Prince
    print(book?.author?.name ?? "unknown")       // Antoine de Saint-Exupéry
}


struct Author {
    var name: String?
}

struct Book {
    var title: String?
    var author: Author?
}
