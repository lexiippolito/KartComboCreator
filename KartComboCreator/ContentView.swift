//
//  ContentView.swift
//  KartComboCreator
//
//  Created by Ippolito, Lexi on 4/14/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text(Strings.homepageTitle)
                    .font(Font.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            
            HStack {
                Text(Strings.homepageWelcomeSubtitle)
                    .font(Font.subheadline)
                Spacer()
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
