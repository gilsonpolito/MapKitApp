//
//  ViewController.swift
//  MapKitApp
//
//  Created by pos on 19/10/2018.
//  Copyright © 2018 pos. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let latitude: CLLocationDegrees = 48.399193
        let longitude: CLLocationDegrees = 9.993341
        
        let latDelta:CLLocationDegrees = 0.01
        let longDelta:CLLocationDegrees = 0.01
        
        let theSpan:MKCoordinateSpan = MKCoordinateSpan.init(latitudeDelta: latDelta, longitudeDelta: longDelta)
        let churchLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let theRegion:MKCoordinateRegion = MKCoordinateRegion.init(center:churchLocation, span:theSpan)
        self.mapView.setRegion(theRegion, animated: true)
        //self.theMapView.mapType = .satellite
        
        let theUImMinisterAnnotation = MKPointAnnotation()
        theUImMinisterAnnotation.coordinate = churchLocation
        theUImMinisterAnnotation.title = "UIm Minister"
        theUImMinisterAnnotation.subtitle = "A famous church in Germany"
        self.mapView.addAnnotation(theUImMinisterAnnotation)
    }
}
