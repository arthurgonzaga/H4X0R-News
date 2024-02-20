//
//  ContentView.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 18/02/24.
//

import SwiftUI

struct HomeListView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        
        ZStack {
            switch viewModel.result {
            case .success(let list):
                List(list) { entity in
                    NavigationLink(destination: DetailView(post: entity)) {
                        HStack {
                            Text(String(entity.points))
                            Text(entity.title)
                                .padding(.horizontal, 8)
                        }
                    }
                }
            case .failure(let error):
                Text(error.localizedDescription).frame(alignment: .center)
            case .loading:
                Text("Loading...").frame(alignment: .center)
            }
        }.navigationTitle("H4X0R NEWS")
            .onAppear {
                if !viewModel.result.isSuccess {
                    viewModel.getFrontPage()
                }
            }
        
        
        
    }
}

#Preview {
    HomeListView()
}
