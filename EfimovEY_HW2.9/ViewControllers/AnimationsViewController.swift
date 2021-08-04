//
//  ViewController.swift
//  EfimovEY_HW2.9
//
//  Created by User on 03.08.2021.
//

import Spring

class AnimationsViewController: UIViewController {
    
    @IBOutlet weak var viewOutlet: SpringView!
    @IBOutlet weak var labelTextOutlet: SpringLabel!
    @IBOutlet weak var buttonSpringOutlet: SpringButton!
    
    let instance = ModelAnimation.animate()
    
    private var indexInstance = 0
    private var lastIndexInstance = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingStartUI()
    }
    
    @IBAction func nextButtonAction() {
        indexInstance += 1
        paramAnimateView(indexArrayInstance: lastIndexInstance)
        paramAnimateLabelText(indexArrayInstance: lastIndexInstance)
        paramAnimatebuttonSpringOutlet(indexArrayInstance: indexInstance)
        animation()
        
    }
    
    private  func settingStartUI() {
        viewOutlet.layer.cornerRadius = 5
        labelTextOutlet.layer.cornerRadius = 5
        buttonSpringOutlet.layer.cornerRadius = 5
        labelTextOutlet.text = labelParamAnimate(indexArrayInstance: indexInstance)
    }
    
    private func paramAnimateView(indexArrayInstance: Int) {
        viewOutlet.animation = "\(instance[indexArrayInstance].preset)"
        viewOutlet.curve = "\(instance[indexArrayInstance].curve)"
        viewOutlet.force = instance[indexArrayInstance].force
        viewOutlet.duration = instance[indexArrayInstance].duration
        viewOutlet.delay = instance[indexArrayInstance].delay
        viewOutlet.animate()
    }
    
    private func paramAnimateLabelText (indexArrayInstance: Int) {
        labelTextOutlet.animation = "\(instance[indexArrayInstance].preset)"
        labelTextOutlet.curve = "\(instance[indexArrayInstance].curve)"
        labelTextOutlet.force = instance[indexArrayInstance].force
        labelTextOutlet.duration = instance[indexArrayInstance].duration
        labelTextOutlet.delay = instance[indexArrayInstance].delay
        labelTextOutlet.animate()
    }
    
    private func paramAnimatebuttonSpringOutlet (indexArrayInstance: Int) {
        buttonSpringOutlet.animation = "\(instance[indexArrayInstance].preset)"
        buttonSpringOutlet.curve = "\(instance[indexArrayInstance].curve)"
        buttonSpringOutlet.force = instance[indexArrayInstance].force
        buttonSpringOutlet.duration = instance[indexArrayInstance].duration
        buttonSpringOutlet.delay = instance[indexArrayInstance].delay
        buttonSpringOutlet.animate()
    }
    
    private func labelParamAnimate(indexArrayInstance: Int) -> String {
        """
        Preset: \(instance[indexArrayInstance].preset)
        Curve: \(instance[indexArrayInstance].curve)
        Force: \(String(format: "%.2f",instance[indexArrayInstance].force))
        Duration: \(String(format: "%.2f",instance[indexArrayInstance].duration))
        Delay: \(String(format: "%.2f",instance[indexArrayInstance].delay))
        """
    }
    
    private func animation() {
        lastIndexInstance = indexInstance - 1
        if indexInstance < instance.count {
            buttonSpringOutlet.setTitle("\(instance[indexInstance].preset)", for: .normal)
        } else {
            indexInstance = 0
            buttonSpringOutlet.setTitle("\(instance[indexInstance].preset)", for: .normal)
        }
        labelTextOutlet.text = labelParamAnimate(indexArrayInstance: lastIndexInstance)
    }
}
