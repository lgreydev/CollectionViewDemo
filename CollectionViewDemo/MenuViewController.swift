//
//  CollectionViewDemo.swift
//  CollectionViewDemo
//
//  Created by Sergey Lukaschuk on 05.04.2022.
//

import UIKit
import AloeStackView

class MenuViewController: UIViewController {

    // MARK: - Private Properties
    private lazy var stackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.distribution = .fillEqually
        sv.addArrangedSubview(plainViewControllerButton)
        sv.addArrangedSubview(subclassedViewButton)
        return sv
    }()

    private lazy var plainViewControllerButton: UIButton = {
        let bt = UIButton()
        bt.setTitle("Plain ViewController", for: .normal)
        bt.addTarget(self, action: #selector(goPlain), for: .touchDown)
        return bt
    }()

    private lazy var subclassedViewButton: UIButton = {
        let bt = UIButton()
        bt.setTitle("Subclassed ViewController", for: .normal)
        bt.addTarget(self, action: #selector(goSubclass), for: .touchDown)
        return bt
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "MenuViewController"
        view.backgroundColor = .blue
        view.addSubview(stackView)
        addConstraints()
    }

    // MARK: - Private Method
    private func addConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }

    // MARK: - Action Button
    @objc func goPlain() {
        self.navigationController?.pushViewController(PlainViewController(), animated: true)
    }

    @objc func goSubclass() {
        self.navigationController?.pushViewController(SubViewController(), animated: true)
    }
}
