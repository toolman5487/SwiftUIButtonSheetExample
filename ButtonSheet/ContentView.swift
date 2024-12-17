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
    @State private var selectionId = 0
    @State private var links = [Item(title: "Page 1", view: AnyView(Myview())), Item(title: "Page 2", view: AnyView(MyView2()))]
    var body: some View {
        //        Button {
        //            theItem = Item(title: "Hello")
        //        } label: {
        //            Text("按鈕")
        //        }
        //        .buttonStyle(.borderedProminent)
        //        .tint(.orange)
        //        .buttonBorderShape(.capsule)
        //        .sheet(item: $theItem) { item in
        //            Myview()
        //        }
        //        TabView(selection: $selectionId){
        //
        //            Myview()
        //                .tabItem {
        //                    Image(systemName: "book")
        //                    Text("Page 1")
        //                }.tag(0)
        //
        //            MyView2()
        //                .tabItem {
        //                    Image(systemName: "book.fill")
        //                    Text("Page 2")
        //                }.tag(1)
        //        }
        
        NavigationStack {
            List(links) { item in
                NavigationLink(destination: item.view){
                    Text(item.title)
                }
            }
        }
    }
}

struct Item:Identifiable{
    let id = UUID()
    let title:String
    let view: AnyView
}

#Preview {
    ContentView()
}
