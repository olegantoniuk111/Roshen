
import UIKit

class MilkySplashViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var plan: UILabel!
    @IBOutlet weak var waste: UILabel!    
    
    @IBOutlet weak var producedBoxes: UITextField!
    
    @IBOutlet weak var producedPallets: UITextField!
    
    @IBOutlet weak var producedWaste: UITextField!
    

    @IBOutlet weak var neededKorpus: UILabel!
    @IBOutlet weak var neededFilling: UILabel!
    @IBOutlet weak var korpusPortion: UILabel!
    
    var milkySplash: MilkySplash?
    var kgOnPortion: String?
    
    @IBAction func calculateWeightKorpus(_ sender: UIButton) {
        var korpus: Double = 0
        var korpusInPortion: Double = 0
        var filling: Double = 0
        
        if let boxes = Int(producedBoxes.text!){
            if let pallets = Int(producedPallets.text!){
                if let waste = Int(producedWaste.text!){
                    let data =  (self.milkySplash?.calculateNeededKorpusAndFillingWeight(producedPallets: pallets, producedBoxes: boxes, producedRecyclableWaste: waste))!
                    korpus = data.korpus
                    filling = data.filling
                    korpusInPortion = korpus/Double(kgOnPortion!)!.rounded(.toNearestOrEven)
                }
            }
        }

        self.neededKorpus.text! = String(korpus)
        self.korpusPortion.text! = String(korpusInPortion)
        self.neededFilling.text! = String(filling)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.plan.text! = String(milkySplash!.producePlan)
        self.name.text! = milkySplash!.name
        self.waste.text! = String(milkySplash!.waste)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
