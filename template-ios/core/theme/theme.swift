//
//  theme.swift
//  template-ios
//
//  Created by Hanan Asiri on 17/10/1444 AH.
//

import UIKit


class ThemeController: UIViewController {

    let userdefaults = UserDefaults.standard
    let mySegmentedControl = UISegmentedControl (items: ["Light Mode","Dark Mode"])
        let theme_Key  = "themeKey"
        let dark_theme = "darkTheme"
        let light_Theme = "lightTheme"

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .systemBackground
        let xPostion:CGFloat = 170
        let yPostion:CGFloat = 110
        let elementWidth:CGFloat = 200
        let elementHeight:CGFloat = 30

        mySegmentedControl.frame = CGRect(x: xPostion, y: yPostion, width: elementWidth, height: elementHeight)

        // Make second segment selected
     mySegmentedControl.selectedSegmentIndex = 0

        //Change text color of UISegmentedControl
        mySegmentedControl.tintColor = UIColor.yellow

        //Change UISegmentedControl background colour
        mySegmentedControl.backgroundColor = UIColor.systemBackground

        // Add function to handle Value Changed events
        mySegmentedControl.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)

        self.view.addSubview(mySegmentedControl)
        updateTheme()
    }

    func updateTheme() {
       
        let theme = userdefaults.string(forKey: theme_Key)
        if (theme == light_Theme) {
           // segmentedValueChanged
            mySegmentedControl.selectedSegmentIndex = 0
            view.backgroundColor = UIColor.white
        }
        else if (theme == dark_theme) {
            mySegmentedControl.selectedSegmentIndex = 1
            view.backgroundColor = UIColor.black
        }
    }

    @objc func segmentedValueChanged(_ sender:UISegmentedControl!)
    {

        switch sender.selectedSegmentIndex {
             case 1:
            self.view.backgroundColor = UIColor.black
            userdefaults.set(dark_theme, forKey: theme_Key)

        default:
            self.view.backgroundColor = UIColor.white
            userdefaults.set(light_Theme, forKey: theme_Key)


        }
        updateTheme()
        print("Selected Segment Index is : \(sender.selectedSegmentIndex)")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
