//
//  PencilKitView.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/26/22.
//

import PencilKit
import SwiftUI

struct PencilKitView: UIViewRepresentable {
    @Binding var editor: PKCanvasView
    @Binding var imageData: Data
    @Binding var toolPicker: PKToolPicker
    let screen = UIScreen.main.bounds
    
    func makeUIView(context: Context) -> PKCanvasView {
        editor.drawingPolicy = .anyInput
        
        if let image = UIImage(data: imageData) {
            let imageView = UIImageView(image: image)
            imageView.frame = CGRect(x: 0, y: -150, width: screen.width, height: screen.height)
            imageView.contentMode = .scaleAspectFit
            
            let subView = editor.subviews[0]
            subView.addSubview(imageView)
            subView.sendSubviewToBack(imageView)
        }
        
        toolPicker.setVisible(true, forFirstResponder: editor)
        toolPicker.addObserver(editor)
        editor.becomeFirstResponder()
        
        return editor
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        
    }
}
