//
//  NetworkImage.swift
//  SaleBoltExtension

import Foundation
import SwiftUI

struct NetworkImage: View {
    
    let url: URL?
    
    var body: some View {
        
        if let url = url, let imageData = try? Data(contentsOf: url),
           let uiImage = UIImage(data: imageData) {
            Image(uiImage: uiImage)
                .resizable()
                .cornerRadius(8)
                .aspectRatio(contentMode: .fit)
        }    }
    
}
