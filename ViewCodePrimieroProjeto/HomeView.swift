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
        return view
    }()
    
    private lazy var gridContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8.0
        return view
    }()
    
    let leftBox = GridBoxView()
    let rightBox = GridBoxView()
    
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
        gridContainer.addArrangedSubview(leftBox)
        gridContainer.addArrangedSubview(rightBox)
        addSubview(gridContainer)
    }
    
    // Configurar constraints
    func setupConstraints() {
        gridContainer.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(320)
            make.centerY.equalToSuperview()
        }
        
        button.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(50)
            make.bottom.equalToSuperview().inset(40)
        }
    }
    
    // Setup adicional
    func setupAdditionalConfiguration() {
        self.backgroundColor = .darkGray
    }
}
