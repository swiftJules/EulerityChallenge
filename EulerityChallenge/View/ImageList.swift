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
                        ImageView(viewModel: imageViewModel)
                    }
                }
            }
        }
    }
}
