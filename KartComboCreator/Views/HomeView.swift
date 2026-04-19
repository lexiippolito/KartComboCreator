//
//  HomeView.swift
//  KartComboCreator
//
//  Created by Lexi on 4/18/26.
//

import SwiftUI

struct HomeView: View {
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
            
            HStack {
                Text("Select a character to get started:")
                    .font(Font.subheadline)
                Spacer()
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
