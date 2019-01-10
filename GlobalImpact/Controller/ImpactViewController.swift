//
//  ViewController.swift
//  GlobalImpact
//
//  Created by Erickson, Ian on 1/10/19.
//  Copyright © 2019 CTEC. All rights reserved.
//

import UIKit
import MapKit

class ImpactViewController: UIViewController
{

    @IBOutlet weak var map: MKMapView!
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Button(_ sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: 35.6895, logitude: 139.6917)
        let mapSpan = MKCoordinateSpan(lattitudeDelta: 10.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(Center: impactLocation, span: mapSpan)
        mapView.animatedZoom(zoomRegion: impactRegion, duration: 5)
    }

}

