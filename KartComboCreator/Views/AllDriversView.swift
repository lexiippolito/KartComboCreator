//
//  AllDriversView.swift
//  KartComboCreator
//
//  Created by Lexi on 4/18/26.
//

import SwiftUI

let allDriversViewModel = AllDriversViewModel()

struct AllDriversView: View {
    var body: some View {
        HStack {
            Text(Strings.Drivers)
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
        }
        .padding()
        
        ForEach(allDriversViewModel.driverNames, id: \.self) { name in
        Text(name)}
    }
}

#Preview {
    AllDriversView()
}
