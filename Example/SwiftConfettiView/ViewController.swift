import SwiftConfettiView
import UIKit

class ViewController: UIViewController {
    private var confettiView: SwiftConfettiView = {
        let view = SwiftConfettiView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.colors = [.systemRed, .systemBlue, .systemPink, .systemGreen, .systemOrange, .systemPurple]
        view.type = .confetti
        return view
    }()

    private var confettiStatus: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 69, weight: .ultraLight)
        label.textAlignment = .center
        label.text = "it's not raining confetti 🙁"
        label.numberOfLines = 0
        return label
    }()

    override func loadView() {
        view = UIView()
        if #available(iOS 13.0, *) {
            view.backgroundColor = .systemBackground
        } else {
            view.backgroundColor = .white
        }

        view.addSubview(confettiStatus)
        view.addSubview(confettiView)

        NSLayoutConstraint.activate([
            confettiStatus.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            confettiStatus.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            confettiStatus.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            confettiStatus.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor),

            confettiView.topAnchor.constraint(equalTo: view.topAnchor),
            confettiView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            confettiView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            confettiView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if confettiView.isActive {
            // Stop confetti
            confettiView.stopConfetti()
            confettiStatus.text = "it's not raining confetti 🙁"
        } else {
            // Start confetti
            confettiView.startConfetti()
            confettiStatus.text = "it's raining confetti 🙂"
        }
    }
}
