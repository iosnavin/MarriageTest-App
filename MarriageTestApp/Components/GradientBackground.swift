//
//  GradientBackground.swift
//  MarriageTestApp
//
//  Created by Naveen Reddy on 21/10/21.
//

import SwiftUI

struct Background: View {
    
    @State private var colorChange = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [colorChange ? Color.pink : Color.green, colorChange ? Color.green : Color.pink]), startPoint: .leading, endPoint: .trailing).onReceive(timer) { time in
            withAnimation(.easeInOut) {
                self.colorChange.toggle()
            }
        }
    }
}


struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
