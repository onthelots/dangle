//
//  NotAvailableLocationView.swift
//  Scoop
//
//  Created by Jae hyuk Yim on 2023/09/29.
//

import UIKit

class NotAvailableLocationView: UIView {

    // MARK: - Components

    // veticalStactkView
    lazy var verticalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        return stackView
    }()

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.sizeToFit()
        label.numberOfLines = 0
        label.text = "사용자의 현재 위치가 서울시 이외의 지역입니다."
        label.font = .preferredFont(forTextStyle: .title2)
        label.textColor = .label
        return label
    }()

    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.sizeToFit()
        label.numberOfLines = 0
        label.text = "Scoop은 분야별 서울시 소식을 전달하는 플랫폼입니다."
        label.font = .preferredFont(forTextStyle: .headline)
        label.textColor = .secondaryLabel
        return label
    }()

    lazy var useSearchBarLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.sizeToFit()
        label.numberOfLines = 0
        label.text = "(서울시 내 동 단위를 검색하여 사용자의 주소를 임의로 설정해주세요)"
        label.font = .preferredFont(forTextStyle: .headline)
        label.textColor = .tintColor
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        // Hidden 초기값
        isHidden = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        verticalStackView.addArrangedSubview(titleLabel)
        verticalStackView.addArrangedSubview(descriptionLabel)
        verticalStackView.addArrangedSubview(useSearchBarLabel)

        NSLayoutConstraint.activate([
            self.verticalStackView.topAnchor.constraint(equalTo: self.topAnchor),
            self.verticalStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.verticalStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.verticalStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
    }
}
