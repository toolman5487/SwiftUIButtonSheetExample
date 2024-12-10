//
//  ContentView.swift
//  ButtonSheet
//
//  Created by Willy Hsu on 2024/12/9.
//

import SwiftUI

struct ContentView: View {
    @State private var isPreesented = false
    @State private var theItem:Item? = nil
    var body: some View {
        Button {
//            self.isPreesented.toggle()
            theItem = Item(title: "Hello")
        } label: {
            Text("按鈕")
        }
        .buttonStyle(.borderedProminent)
        .tint(.orange)
        .buttonBorderShape(.capsule)
        .sheet(item: $theItem) { item in
            Text(item.title)
        }
//        .sheet(isPresented: $isPreesented, content: {
//            Myview()
//        })

        }
    }

struct Item:Identifiable{
    let id = UUID()
    let title:String
}

#Preview {
    ContentView()
}
