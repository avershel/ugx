

//
//  ConsentDocument.swift
//  Camelot
//
//  Created by Austin Vershel on 6/24/16.
//  Copyright © 2016 Austin Vershel. All rights reserved.
//

import Foundation
import ResearchKit

public var GnemValidateDocument: ORKConsentDocument {
    
    let consentDocument = ORKConsentDocument()
    consentDocument.title = "Example Consent"
    
    //TODO: consent sections
    
    
    
    
    var consentSections = [ORKConsentSection]();
    
    var consentSection = ORKConsentSection()
    
    
    consentSection = ORKConsentSection(type: .Custom)
    
    consentSection.title = "Privacy Policy";
    consentSection.customImage = UIImage(named: "lock.png")
    
    consentSection.summary = "Who will have access to my anonymous health information?"
    consentSection.content = "GNEM researchers or companies planning clinical trials on new therapies will only have access to the anonymous information identifiable by a code.\nOnly anonymous information will be provided to researchers for publication purposes.\nA description of the GNEM-DMP is available on www.clinicaltrials.gov.\nThis website will not include information that can identify you\nYour personal health information will not be made available to employers, government organizations, insurance companies or educational institutions, your spouse, members of your family, or your doctor."
    consentSections.append(consentSection)
    
    
    
    
    
    
    
    consentDocument.sections = consentSections
    
    //TODO: signature
    consentDocument.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "ConsentValidateDocumentParticipantSignature"))
    
    
    return consentDocument
}

