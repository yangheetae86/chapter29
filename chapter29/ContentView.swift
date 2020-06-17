//
//  ContentView.swift
//  chapter29
//
//  Created by HEE TAE YANG on 2020/06/17.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Circle()
                .stroke(lineWidth: 10)
                .fill(Color.blue)
                //                .foregroundColor(.blue)
                .frame(width: 200, height: 100)
            RoundedRectangle(cornerRadius: (20))
                .foregroundColor(.yellow)
                .frame(width: 200, height: 100)
            Ellipse()
                .stroke(style: StrokeStyle(lineWidth: 20, dash: [(10), (5), (2)], dashPhase: (10)))
                .foregroundColor(.red)
                .frame(width: 250, height: 150)
            Ellipse()
                .fill(Color.orange)
                .overlay(Ellipse().stroke(Color.blue, lineWidth: 10))
                .frame(width: 250, height: 150)
            Path{ p in
                p.move(to: CGPoint(x: 10, y: 0))
                p.addLine(to: CGPoint(x: 10, y: 350))
                p.addLine(to: CGPoint(x: 300, y: 300))
                p.closeSubpath()
            }
            .foregroundColor(.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
