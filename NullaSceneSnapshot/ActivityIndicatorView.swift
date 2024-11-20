//
//  ActivityIndicatorView.swift
//  NullaSceneSnapshot
//
//  Created by Matheus Silveira Venturini on 19/11/24.
//


import SwiftUI
import SceneKit.ModelIO

struct ActivityIndicatorView: UIViewRepresentable {
    typealias UIViewType = UIActivityIndicatorViewExpandedSize
    
    func makeUIView(context: Context) -> UIActivityIndicatorViewExpandedSize {
        let view = UIActivityIndicatorViewExpandedSize()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorViewExpandedSize, context: Context) {
        
    }
    
    func sizeThatFits(_ proposal: ProposedViewSize, uiView: UIActivityIndicatorViewExpandedSize, context: Context) -> CGSize? {
        //        uiView.intrinsicContentSize
        return .init(width: proposal.width ?? .infinity, height: proposal.height ?? .infinity)
    }
    
}