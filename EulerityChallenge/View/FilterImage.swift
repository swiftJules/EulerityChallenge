//
//  FilterImage.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import CoreImage
import SwiftUI

struct FilterImage: View {
    @State var image: Image?
    let uiImage: UIImage?
    let filter: CIFilter?
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75)
        }
        .onAppear(perform: loadImage)
    }
    
    func loadImage() {
        guard let inputImage = uiImage else { return }
        let startingImage = CIImage(image: inputImage)
        let context = CIContext()
        
        filter?.setValue(startingImage, forKey: "inputImage")
        guard let result = filter?.outputImage else { return }

        if let cgimg = context.createCGImage(result, from: result.extent) {
            let uiImage = UIImage(cgImage: cgimg)
            image = Image(uiImage: uiImage)
        }
    }
}
