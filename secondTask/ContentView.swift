//
//  ContentView.swift
//  secondTask
//
//  Created by  Pavel Nepogodin on 3.10.23.
//

import SwiftUI

struct ContentView: View {
    @State private var textWidth = 300.0
    
    var body: some View {
        VStack {
            VStack {
                Text(
                    "\(Text("Марафон").foregroundColor(.gray)) \(Text("по SwiftUI").bold()) \(Text("\"Отцовский пинок\"").font(.system(size: 25)).foregroundColor(.blue).bold())"
                )
            }
            .frame(width: textWidth, height: 200, alignment: .leading)
            .border(.red)
            Slider(
                value: $textWidth,
                in: 100...300
            ).padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
