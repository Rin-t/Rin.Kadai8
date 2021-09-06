//
//  SecondViewController.swift
//  Kadai8
//
//  Created by Rin on 2021/09/04.
//

import UIKit

final class SecondViewController: UIViewController {
    @IBOutlet private weak var valueLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    private weak var delegate = UIApplication.shared.delegate as? AppDelegate

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        slider.value = delegate?.shareValue ?? 0
        valueLabel.text = String(slider.value)
    }

    @IBAction private func sliderValueChanged(_ sender: UISlider) {
        delegate?.shareValue = sender.value
        valueLabel.text = String(sender.value)
    }
}
