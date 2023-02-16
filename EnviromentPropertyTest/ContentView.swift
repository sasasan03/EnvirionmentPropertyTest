//
//  ContentView.swift
//  EnviromentPropertyTest
//
//  Created by sako0602 on 2023/02/14.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            Button {
                isPresented = true
            } label: {
                if colorScheme == .dark {
                    Text("おしてみ")
                        .foregroundColor(.white)
                } else if colorScheme == .light {
                    Text("おしてみ")
                        .foregroundColor(.black)
                }
            }
        }
        .sheet(isPresented: $isPresented) {
            ColorSchemeView()
//                .preferredColorScheme(.dark)
                .preferredColorScheme(.light)
        }
    }
}

//struct NextView: View {
//    let user: UserInfo
//    @Environment(\.dismiss) var dismiss
//    var body: some View {
//        VStack {
//            Text("あなた誰？\(user.name)")
//            Button("画面を閉じる"){ dismiss() }
//        }
//    }
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
//            .preferredColorScheme(.dark)
    }
}
