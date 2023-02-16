//
//  ColorSchemeView.swift
//  EnviromentPropertyTest
//
//  Created by sako0602 on 2023/02/14.
//

import SwiftUI

struct ColorSchemeView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        
        VStack{
            Text("背景によって文字の色が変わるよ")
            if colorScheme == .dark {
                Button("戻る"){
                    dismiss()
                }
            } else if colorScheme == .light {
                Button("戻る"){
                    dismiss()
                }
            }
        }
    }
}
struct ColorSchemeView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSchemeView()
            .preferredColorScheme(.dark)
    }
}
