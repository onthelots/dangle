//
//  HomeSectionHeaderReusableView.swift
//  Dangle
//
//  Created by Jae hyuk Yim on 2023/08/25.
//

import UIKit

class HomeSectionHeaderReusableView: UICollectionReusableView {
    static let identifier = "HomeSectionHeaderReusableView"

    private lazy var sectionTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .label
        label.textAlignment = .left
        label.numberOfLines = 1
        label.sizeToFit()
        label.font = .preferredFont(forTextStyle: .headline)
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubview(sectionTitleLabel)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        NSLayoutConstraint.activate([
            sectionTitleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            sectionTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10)
        ])
    }

    override func prepareForReuse() {
        super.prepareForReuse()

        // 재사용 되기전에 초기화
        sectionTitleLabel.text = nil
    }

    func configure(with title: String) {
        sectionTitleLabel.text = title
    }
}
