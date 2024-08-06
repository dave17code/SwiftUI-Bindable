//
//  ContentView.swift
//  Bindable
//
//  Created by 김두운 on 8/6/24.
//

import SwiftUI

@Observable class Book {
    var title: String
    init(title: String) {
        self.title = title
    }
}

struct ContentView: View {
    @Bindable var book = Book(title: "해리포터")
    
    var body: some View {
        VStack {
            Text("\(book.title)")
            TextField("Title", text: $book.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
