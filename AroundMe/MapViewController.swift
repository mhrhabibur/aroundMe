//
//  MapViewController.swift
//  AroundMe
//
//  Created by Habibur Rahman on 7/7/23.
//
import MapKit
import UIKit

class MapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    let location = CLLocation(latitude: 28.613939, longitude: 77.209023)
    let region_radious = 10000
    override func viewDidLoad() {
        super.viewDidLoad()

        centerMap(location: location)
    }
    
    func centerMap(location: CLLocation) {
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(region_radious), longitudinalMeters: CLLocationDistance(region_radious))
        mapView.setRegion(region, animated: true)
    }

}
