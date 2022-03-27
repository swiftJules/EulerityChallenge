//
//  DrawingViewModel.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/26/22.
//

import PencilKit
import SwiftUI

class DrawingViewModel: ObservableObject {
    @Published var imageData: Data = Data(count: 0)
    @Published var editor = PKCanvasView()
    @Published var toolPicker = PKToolPicker()
    
    func cancelEditing() {
        imageData = Data(count: 0)
    }
}
