//
//  MyView2.swift
//  ButtonSheet
//
//  Created by Willy Hsu on 2024/12/17.
//

import SwiftUI

struct MyView2: View {
    var body: some View {
        VStack{
            Spacer()
            Image(systemName: "scribble.variable")
                .resizable()
                .aspectRatio(1,contentMode: .fit)
            Spacer()
        }.background(Color.yellow)
    }
}

#Preview {
    MyView2()
}
