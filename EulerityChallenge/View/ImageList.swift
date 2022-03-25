//
//  ImageList.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/22/22.
//

import SwiftUI

struct ImageList: View {
    @ObservedObject var viewModel = ImageListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.images) { image in
                    let imageViewModel = ImageDetailViewModel(model: image)
                    NavigationLink(destination: ImageDetail(viewModel: imageViewModel)) {
                        AsyncImage(url: URL(string: imageViewModel.url)!) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75)
                        } placeholder: {
                            Image(systemName: "photo.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75)
                        }
                        
                        //ImageView(viewModel: imageViewModel)
                    }
                }
            }
        }
    }
}
