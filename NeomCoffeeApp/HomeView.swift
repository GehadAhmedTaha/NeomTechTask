//
//  HomeView.swift
//  NeomInterviewApp
//
//  Created by Gehad AbdElAziz on 13/03/2024.
//

import SwiftUI

struct HomeView: View {
    var viewModel = HomeViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.items) { items in
                    ForEach(0..<2) { item in
                        CollectionView(data: items)
                    }
                }
            }.navigationBarTitle("Pick your favorite coffee")
        }
    }
    
}

struct CollectionView: View {
    let data: CoffeeModel
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<2) { items in
                    Spacer()

                    AsyncImage(url:self.data.imageUrl)
                        .frame(width: 150, height: 150)
                        .foregroundColor(.yellow)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                    Spacer()
                }.padding(.bottom, 16)
            }
            HStack {
                Spacer()
                Text(self.data.title ?? "")
                Spacer()
                Text(self.data.title ?? "")
                Spacer()
            }
        }
    }
}


#Preview {
    HomeView()
}
