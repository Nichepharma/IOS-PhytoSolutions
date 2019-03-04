class Store
{
    var name: String = "";
    var longitude: Double = 0.0;
    var latitude: Double = 0.0;
    var address: String = "";
    var mapUrl: String = "";
    
    init(name: String, longitude: Double, latitude: Double, address: String, mapUrl:String)
    {
        self.name = name;
        self.longitude = longitude;
        self.latitude = latitude;
        self.address = address;
        self.mapUrl = mapUrl;
    }
}
