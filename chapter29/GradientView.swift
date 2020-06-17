//
//  GradientView.swift
//  chapter29
//
//  Created by HEE TAE YANG on 2020/06/17.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct GradientView: View {
    
    let colors = Gradient(colors: [Color.red,Color.purple,Color.yellow,Color.green])
    
    var body: some View {
        VStack {
            Circle()
                .fill(RadialGradient(gradient: colors, center: .center, startRadius: CGFloat(0), endRadius: CGFloat(300)))
            Circle()
                .fill(AngularGradient(gradient: colors, center: .center))
            Rectangle()
                .fill(LinearGradient(gradient: colors, startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: 360, height: 350)
        }
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
