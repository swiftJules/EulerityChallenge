//
//  ImageEditor.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import PencilKit
import SwiftUI

struct ImageEditor: View {
    @EnvironmentObject var model: DrawingViewModel
    var viewModel: ImageDetailViewModel?
    
    var body: some View {
        ZStack {
            PencilKitView(editor: $model.editor, imageData: $model.imageData, toolPicker: $model.toolPicker)
        }
    }
}


