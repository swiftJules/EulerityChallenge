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
    
    func makeUIView(context: Context) -> PKCanvasView {
        //self.editor.tool = PKInkingTool(.pen, color: .label)
        self.editor.becomeFirstResponder()
        return editor
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        toolkit.addObserver(editor)
        toolkit.setVisible(true, forFirstResponder: uiView)
        DispatchQueue.main.async {
            uiView.becomeFirstResponder()
        }
    }
}


