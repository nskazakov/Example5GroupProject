//
//  ProfileView.swift
//  5retailProject
//
//  Created by Nikita Kazakov on 05.10.2021.
//

import UIKit

final class ProfileView: BaseViewController {

    var viewModel: ProfileViewModelType!

    private lazy var collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    ).then {
        $0.dataSource = self
        $0.backgroundColor = .systemOrange
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Имя Пользователя"
    }

    //  MARK: - Settings

    override func setupView() {

        view.backgroundColor = .white

        let barButton = UIBarButtonItem(
            image: UIImage(systemName: "ellipsis"),
            style: .done, target: nil, action: nil)
        navigationItem.rightBarButtonItem = barButton
        navigationItem.rightBarButtonItem?.tintColor = .white
    }

    override func setupHierarchy() {
        view.addSubview(collectionView)
    }

    override func setupLayout() {
        collectionView.snp.makeConstraints {
            $0.top.leading.trailing.bottom.equalToSuperview()
        }
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension ProfileView: UICollectionViewDelegateFlowLayout {

}

extension ProfileView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        UICollectionViewCell()
    }
}
