//
//  HomeView.swift
//  ViewCodePrimieroProjeto
//
//  Created by Douglas Cardoso on 16/12/21.
//

import UIKit

final class HomeView: UIView {
    
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("Botão", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeView: CodeView {
    
    // Adicionar view
    func buildViewHierarchy() {
        addSubview(button)
    }
    
    // Configurar constraints
    func setupConstraints() {
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40).isActive = true
    }
    
    // Setup adicional
    func setupAdditionalConfiguration() {
        self.backgroundColor = .darkGray
    }
}
