//
//  AllDriversView.swift
//  KartComboCreator
//
//  Created by Lexi on 4/18/26.
//

import SwiftUI

let allDriversViewModel = AllDriversViewModel()
let columns = Array(repeating: GridItem(.flexible()), count: 8)

struct AllDriversView: View {
    var body: some View {
        VStack {
            HStack {
                Text(Strings.Drivers)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            //        .padding()
            
            // don't think we need lazy grid if we know # of drivers, but cool to know :)
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(allDriversViewModel.driverNames, id: \.self) { name in
                    
                    Button(action: {
                        print("hi")
                    }) {
                        Image(name + " Icon")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(1, contentMode: .fit)
                            .clipped()
                    }
                }
            }
            //        .padding()
        }
//        .padding()
    }
        
        
}

#Preview {
    AllDriversView()
}
