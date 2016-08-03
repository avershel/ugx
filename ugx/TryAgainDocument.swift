

//
//  TryAgainDocument.swift
//  Viewed when the user answers a security question wrong. Reprompts terms and conditions
//
//  Created by Austin Vershel on 6/24/16.
//  Copyright © 2016 Austin Vershel. All rights reserved.
//

import Foundation
import ResearchKit

public var TryAgainDocument: ORKConsentDocument {
    
    let consentDocument = ORKConsentDocument()
    consentDocument.title = "Example Consent"
    
    //TODO: consent sections
    
    
    
    
    var consentSections = [ORKConsentSection]();
    
    var consentSection = ORKConsentSection()
    
    
    consentSection = ORKConsentSection(type: .Custom)
    consentSection.title = "Terms and Conditions";
    consentSection.customImage = UIImage(named: "terms.png")
    
    
    consentSection.summary = "Where and how will my health information be stored?"
    consentSection.content = "The health information that you enter for the GNEM-DMP registry will be entered into an international database, which is supervised by TREAT-NMD.\nYour personal health information will be treated confidentially and will only be identified by an anonymous code, and not by your name.\nThere are data protection measures in place to protect the information entered.\nThe personal and medical information collected will be stored on a secure server for up to 15 years."
    consentSections.append(consentSection)
    
    
    
    
    
    
    
    consentDocument.sections = consentSections
    
    //TODO: signature
    consentDocument.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "TryAgainDocument"))
    
    
    return consentDocument
}

