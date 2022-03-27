//
//  ImageList.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/22/22.
//

import SwiftUI

struct ImageList: View {
    @ObservedObject var viewModel = ImageListViewModel()
    // @ObservedObject var loaded: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                if let viewModel = viewModel {
                    ForEach(viewModel.detailViewModels) { detailViewModel in
                        NavigationLink(destination: ImageDetail(viewModel: detailViewModel)) {
                            //ImageView(viewModel: detailViewModel)
                            
                            AsyncImage(url: URL(string: detailViewModel.url)!) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                            } placeholder: {
                                Image(systemName: "photo.circle.fill")
                                    .resizable()
                                    .opacity(0.2)
                                    .scaledToFit()
                            }
                        }
                    }
                }
            }
        }
    }
}
