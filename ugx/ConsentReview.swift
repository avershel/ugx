//
//  ConsentReview.swift
//  This is the consent and registration following the security question
//
//  Created by Austin Vershel on 6/24/16.
//  Copyright © 2016 Austin Vershel. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentReview: ORKOrderedTask {
    
    var steps = [ORKStep]()
    
    
    //    TODO: Add ConsentReviewStep
    
    var consentDocument = ConsentReviewDocument
    
    let signature = consentDocument.signatures!.first! as ORKConsentSignature
    
    let reviewConsentStep = ORKConsentReviewStep(identifier: "ConsentReviewStep", signature: signature, inDocument: consentDocument)
    
    reviewConsentStep.text = "Review Consent!"
    reviewConsentStep.reasonForConsent = "Consent to join study"
    
    steps += [reviewConsentStep]
    
    
    let summaryStep = ORKCompletionStep(identifier: "ThankYouStep")
    summaryStep.title = "Thank you for Registering!"
    summaryStep.text = "You will be automatically routed to your survey by clicking the Done button in the top right corner."
    //    summaryStep.
    steps += [summaryStep]
    return ORKOrderedTask(identifier: "ConsentLateTask", steps: steps)
}
