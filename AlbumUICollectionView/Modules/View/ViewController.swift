//
//  ViewController.swift
//  AlbumUICollectionView
//
//  Created by SNZ on 01.06.2022.
//

import UIKit

class ViewController: UIViewController {

//MARK: - Life style
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigationController()

    }

//MARK: - Create methods

    private func setupNavigationController() {
        navigationItem.title = "Альбомы"

        //Цвет фона
        let apperance = UINavigationBarAppearance()
        apperance.configureWithOpaqueBackground()
        apperance.backgroundColor = .white

        //Цвет текста
        let titleAttribute  = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18, weight: .bold), NSAttributedString.Key.foregroundColor: UIColor.black]
        apperance.titleTextAttributes = titleAttribute


        navigationController?.navigationBar.standardAppearance = apperance
        navigationController?.navigationBar.scrollEdgeAppearance = apperance
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

