import UIKit

class StoresViewController: MainViewController, UITableViewDelegate, UITableViewDataSource {

 
    @IBOutlet
    var tableView: UITableView!
    
    var stores = [Store]();
    
    override func loadView() {
        super.loadView()
        //self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        stores.append(Store(name:"s1_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s1_address".localized(), mapUrl: "https://goo.gl/maps/ES"));
        
        stores.append(Store(name:"s2_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s2_address".localized(), mapUrl: "https://goo.gl/maps/H5ey1SFc3eT2"));
        
        stores.append(Store(name:"s3_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s3_address".localized(), mapUrl: "https://goo.gl/maps/9tTRYTyJB2n"));
        
        stores.append(Store(name:"s4_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s4_address".localized(), mapUrl: "https://goo.gl/maps/jRfXRVWsZp52"));
        
        stores.append(Store(name:"s5_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s5_address".localized(), mapUrl: "https://goo.gl/maps/iJz5HMGhX6k"));
        
        stores.append(Store(name:"s6_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s6_address".localized(), mapUrl: "https://goo.gl/maps/uUycmS1Y7Vk"));
        
        stores.append(Store(name:"s7_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s7_address".localized(), mapUrl: "https://goo.gl/maps/WUzBj5cXdZQ2"));
        
        stores.append(Store(name:"s8_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s8_address".localized(), mapUrl: "https://goo.gl/maps/ptX3XyvRuaA2"));
        
        stores.append(Store(name:"s9_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s9_address".localized(), mapUrl: "https://goo.gl/maps/3adZcTTUpfQ2"));
        
        stores.append(Store(name:"s10_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s10_address".localized(), mapUrl: "https://goo.gl/maps/T8yGms649DH2"));
        
        stores.append(Store(name:"s11_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s11_address".localized(), mapUrl: "https://goo.gl/maps/SErXvu3ZD1U2"));
        
        stores.append(Store(name:"s12_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s12_address".localized(), mapUrl: "https://goo.gl/maps/M8aKsZ9Q6R72"));
        
        stores.append(Store(name:"s13_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s13_address".localized(), mapUrl: "https://goo.gl/maps/wvtb2R69MTF2"));
        
        stores.append(Store(name:"s14_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s14_address".localized(), mapUrl: "https://goo.gl/maps/JfdgGxpLJ6w"));
        
        stores.append(Store(name:"s15_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s15_address".localized(), mapUrl: "https://goo.gl/maps/rTTwdoPjN892"));
        
        stores.append(Store(name:"s16_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s16_address".localized(), mapUrl: "https://goo.gl/maps/bAyqRTSohj52"));
        
        stores.append(Store(name:"s17_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s17_address".localized(), mapUrl: "https://goo.gl/maps/yuCrm2FaUHp"));
        
        stores.append(Store(name:"s18_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s18_address".localized(), mapUrl: "https://goo.gl/maps/T39GJQH4MBw"));
        
        stores.append(Store(name:"s19_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s19_address".localized(), mapUrl: "https://goo.gl/maps/cCWdziHEMHk"));
        
        stores.append(Store(name:"s20_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s20_address".localized(), mapUrl: "https://goo.gl/maps/JR83bmyNbhv"));
        
        stores.append(Store(name:"s21_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s21_address".localized(), mapUrl: "https://goo.gl/maps/ngrXZkCr6mr"));
        
        stores.append(Store(name:"s22_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s22_address".localized(), mapUrl: "https://goo.gl/maps/fCSMXQvmoW82"));
        
        stores.append(Store(name:"s23_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s23_address".localized(), mapUrl: "https://goo.gl/maps/oxByR1fPp4T2"));
        
        stores.append(Store(name:"s24_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s24_address".localized(), mapUrl: "https://goo.gl/maps/fi4AW4C5Pdo"));
        
        stores.append(Store(name:"s25_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s25_address".localized(), mapUrl: "https://goo.gl/maps/ZhFeb23qvBP2"));
        
        stores.append(Store(name:"s26_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s26_address".localized(), mapUrl: "https://goo.gl/maps/7U"));
        
        stores.append(Store(name:"s27_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s27_address".localized(), mapUrl: "https://goo.gl/maps/vzzgDiquz7r"));
        
        stores.append(Store(name:"s28_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s28_address".localized(), mapUrl: "https://goo.gl/maps/SMq9tuu6Hcp"));
        
        stores.append(Store(name:"s29_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s29_address".localized(), mapUrl: "https://goo.gl/maps/iiS6rFNatjk"));
        
        stores.append(Store(name:"s30_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s30_address".localized(), mapUrl: "https://goo.gl/maps/Gvw7Jg9EidQ2"));
        
        stores.append(Store(name:"s31_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s31_address".localized(), mapUrl: "https://goo.gl/maps/zf2e3yTUiWq"));
        
        
        stores.append(Store(name:"s32_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s32_address".localized(), mapUrl: "https://goo.gl/maps/p1XnkCTCXJ42"));
        
        
        
        stores.append(Store(name:"s33_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s33_address".localized(), mapUrl: "https://goo.gl/maps/1Kx9HVUGFxF2"));
        
        
        
        stores.append(Store(name:"s34_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s34_address".localized(), mapUrl: "https://goo.gl/maps/pCoRgxgW7D42"));
        
        stores.append(Store(name:"s35_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s35_address".localized(), mapUrl: "https://goo.gl/maps/L3N42xYWYf42"));
        
        stores.append(Store(name:"s36_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s36_address".localized(), mapUrl: "https://goo.gl/maps/AFWf8emSyUS2"));
        
        stores.append(Store(name:"s37_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s37_address".localized(), mapUrl: "https://goo.gl/maps/j8MCvJVKrjE2"));
        
        stores.append(Store(name:"s38_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s38_address".localized(), mapUrl: "https://goo.gl/maps/DRQbFoo1uCu"));
        
        stores.append(Store(name:"s39_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s39_address".localized(), mapUrl: "https://goo.gl/maps/KMQbQsDgJT52"));
        
        stores.append(Store(name:"s40_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s40_address".localized(), mapUrl: "https://goo.gl/maps/fFHMNHoPiHA2"));
        
        
        stores.append(Store(name:"s41_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s41_address".localized(), mapUrl: "https://goo.gl/maps/d1ZxFhYryo62"));
        
        stores.append(Store(name:"s42_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s42_address".localized(), mapUrl: "https://goo.gl/maps/DXF8L85icz32"));
        
        stores.append(Store(name:"s43_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s43_address".localized(), mapUrl: "https://www.google.co.in/maps/place/%D8%A7%D9%84%D9%81%D8%A7+%D9%88%D8%A7%D9%8A%D8%AA%D8%B3%E2%80%AD/@24.7845218,46.4232366,10z/data=!4m8!1m2!2m1!1sWhite+Pharmacy+HQ!3m4!1s0x3e2efd03b044812d:0xb5f276999af4df0e!8m2!3d24.7895175!4d46.7026374"));
        
        stores.append(Store(name:"s44_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s44_address".localized(), mapUrl: "https://goo.gl/maps/mJwojC9m8Us"));
        
        stores.append(Store(name:"s45_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s45_address".localized(), mapUrl: "https://goo.gl/maps/GeQumjKefJp"));
        
        stores.append(Store(name:"s46_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s46_address".localized(), mapUrl: "https://goo.gl/maps/unfEXe2nSkR2"));
        
        stores.append(Store(name:"s47_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s47_address".localized(), mapUrl: "https://goo.gl/maps/fTPWYcgjZNB2"));
        
        stores.append(Store(name:"s48_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s48_address".localized(), mapUrl: "https://goo.gl/maps/3xQpLHS1iaE2"));
        
        stores.append(Store(name:"s49_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s49_address".localized(), mapUrl: "https://goo.gl/maps/MZCZvEAfQq82"));
        
        stores.append(Store(name:"s50_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s50_address".localized(), mapUrl: "https://goo.gl/maps/ES"));
        
        stores.append(Store(name:"s51_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s51_address".localized(), mapUrl: "https://goo.gl/maps/8jdQHu1NS9y"));
        
        stores.append(Store(name:"s52_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s52_address".localized(), mapUrl: "https://goo.gl/maps/r8N7LEsDB7D2"));
        
        stores.append(Store(name:"s53_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s53_address".localized(), mapUrl: "https://goo.gl/maps/b9RzZmnK7k42"));
        
        stores.append(Store(name:"s54_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s54_address".localized(), mapUrl: "https://goo.gl/maps/ES"));
        
        stores.append(Store(name:"s55_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s55_address".localized(), mapUrl: "https://goo.gl/maps/MV8UB72HQTv"));
        
        stores.append(Store(name:"s56_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s56_address".localized(), mapUrl: "https://goo.gl/maps/YH1dqUjtsAu"));
        
        stores.append(Store(name:"s57_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s57_address".localized(), mapUrl: "https://goo.gl/maps/zcritvwjf2y"));
        
        
        stores.append(Store(name:"s58_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s58_address".localized(), mapUrl: "https://goo.gl/maps/AWKN7TqgNFS2"));
        
        
        stores.append(Store(name:"s59_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s59_address".localized(), mapUrl: ""));
        
        
        stores.append(Store(name:"s60_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s60_address".localized(), mapUrl: "https://goo.gl/maps/sucSVobrFxQ2"));
        
        
        stores.append(Store(name:"s61_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s61_address".localized(), mapUrl: "https://goo.gl/maps/ffC2xrosNyp"));
        
        stores.append(Store(name:"s62_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s62_address".localized(), mapUrl: "https://goo.gl/maps/J7vKrDipmsD2"));
        
        stores.append(Store(name:"s63_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s63_address".localized(), mapUrl: "https://goo.gl/maps/LPMjMui7ixp"));
        
        stores.append(Store(name:"s64_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s64_address".localized(), mapUrl: "https://goo.gl/maps/ES"));
        
        
        stores.append(Store(name:"s65_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s65_address".localized(), mapUrl: "https://goo.gl/maps/5FVizFbEA5A2"));
        
        stores.append(Store(name:"s66_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s66_address".localized(), mapUrl: "https://goo.gl/maps/GWgWqPum2mP2"));
        
        stores.append(Store(name:"s67_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s67_address".localized(), mapUrl: "https://goo.gl/maps/foxd91ueth22"));
        
        stores.append(Store(name:"s68_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s68_address".localized(), mapUrl: "https://goo.gl/maps/kjUz4Uuvdhr"));
        
        stores.append(Store(name:"s69_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s69_address".localized(), mapUrl: "https://goo.gl/maps/T8TP3UmWjzS2"));
        
        stores.append(Store(name:"s70_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s70_address".localized(), mapUrl: "https://www.google.com.sa/maps/place/Mall+of+Dhahran/@26.3087169,50.1289141,14z/data=!4m8!1m2!2m1!1sDhahran+mall,+Eastern+Province!3m4!1s0x3e49e63110aa9a5f:0xa0df1dd460cea5d4!8m2!3d26.3058806!4d50.1697074"));
        
        stores.append(Store(name:"s71_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s71_address".localized(), mapUrl: "https://goo.gl/maps/eSWVExaeQto"));
        
        stores.append(Store(name:"s72_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s72_address".localized(), mapUrl: "https://goo.gl/maps/MZv2guFxrSC2"));
        
        
        stores.append(Store(name:"s73_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s73_address".localized(), mapUrl: "https://goo.gl/maps/ES"));
        
        
        stores.append(Store(name:"s74_name".localized(),
                            longitude:0.0, latitude:0.0,
                            address:"s74_address".localized(), mapUrl: "https://goo.gl/maps/ES"));
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back_title".localized() , style: .plain, target: self, action:#selector(dismissMe(_:)) )
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissMe(_ sender: Any) {
        _ = navigationController?.popToRootViewController(animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.stores.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "storeCell") as! UITableViewCell
        cell.textLabel?.text = self.stores[indexPath.row].name;
        cell.detailTextLabel?.text = self.stores[indexPath.row].address;
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //indexPath.row
        let mapViewController = MapViewController();
        mapViewController.chosenStore = stores[indexPath.row];
        
        navigationController?.pushViewController(mapViewController, animated: true);
        return
    }
    

    
}

