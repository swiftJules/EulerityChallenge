//
//  ImageEditor.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import PencilKit
import SwiftUI

struct ImageEditor: UIViewRepresentable {
    var editor = PKCanvasView()
    let toolkit = PKToolPicker.init()
    var image: UIImage?
    
    func makeUIView(context: Context) -> PKCanvasView {
        //self.editor.tool = PKInkingTool(.pen, color: .label)
        self.editor.becomeFirstResponder()
        return editor
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        if let image = image {
            let imageView = UIImageView(image: image)
            imageView.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
            imageView.contentMode = .scaleToFill
            imageView.clipsToBounds = true
            
            let subView = editor.subviews[0]
            subView.addSubview(imageView)
            subView.sendSubviewToBack(imageView)
        }
        
        toolkit.addObserver(editor)
        toolkit.setVisible(true, forFirstResponder: uiView)
        DispatchQueue.main.async {
            uiView.becomeFirstResponder()
        }
    }
}


