//
//  ItemDetailViewController.swift
//  PartyPlanner
//
//  Created by John Gallaugher on 10/16/18.
//  Copyright © 2018 John Gallaugher. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {
    @IBOutlet weak var partyItemField: UITextField!
    @IBOutlet weak var personResponsibleField: UITextField!
    
    var partyItem: String!
    var personResponsible: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if partyItem == nil {
            partyItem = ""
            personResponsible = ""
        }
        partyItemField.text = partyItem
        personResponsibleField.text = personResponsible
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        partyItem = partyItemField.text
        personResponsible = personResponsibleField.text
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode { // modal segue
            dismiss(animated: true, completion: nil)
        } else { // show segue
            navigationController!.popViewController(animated: true)
        }
    }
    
}
