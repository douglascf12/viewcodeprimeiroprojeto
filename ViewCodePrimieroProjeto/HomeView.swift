//
//  HomeView.swift
//  ViewCodePrimieroProjeto
//
//  Created by Douglas Cardoso on 16/12/21.
//

import UIKit

final class HomeView: UIView {
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        let button = UIButton(frame: .zero)
        button.backgroundColor = .red
        button.setTitle("Botão", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // Adicionar view
        addSubview(button)
        
        // Configurar constraints
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40).isActive = true
        
        // Setup adicional
        self.backgroundColor = .darkGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
