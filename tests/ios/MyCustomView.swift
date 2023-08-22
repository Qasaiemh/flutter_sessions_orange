// MyCustomView.swift
import UIKit

class MyCustomView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        let label = UILabel(frame: frame)
        label.text = "Native iOS View"
        addSubview(label)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
