//
//  UIActivityIndicatorViewExpandedSize.swift
//  NullaSceneSnapshot
//
//  Created by Matheus Silveira Venturini on 19/11/24.
//


import SwiftUI
import SceneKit.ModelIO

class UIActivityIndicatorViewExpandedSize: UIView {
    
    override var intrinsicContentSize: CGSize {
        return UIView.layoutFittingExpandedSize
    }
    
    init() {
        super.init(frame: .infinite)
        
        let ativityIndicatorView = UIActivityIndicatorView(style: .large)
        ativityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        ativityIndicatorView.color = .activityIndicator
        
        ativityIndicatorView.startAnimating()
        addSubview(ativityIndicatorView)
        
        NSLayoutConstraint.activate([
            
            ativityIndicatorView.centerXAnchor.constraint(equalTo: centerXAnchor),
            ativityIndicatorView.centerYAnchor.constraint(equalTo: centerYAnchor)
            
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}