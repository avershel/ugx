//
//  TryAgainTerms.swift
//  Re-asks the security question
//
//  Created by Austin Vershel on 6/24/16.
//  Copyright © 2016 Austin Vershel. All rights reserved.
//

import Foundation
import ResearchKit

public var TryAgainTerms: ORKOrderedTask {
    
    var steps = [ORKStep]()
    
    //TODO: Add VisualConsentStep
    var consentDocument = TryAgainDocument
    let visualConsentStep = ORKVisualConsentStep(identifier: "VisualConsentStep", document: consentDocument)
    steps += [visualConsentStep]
    
    
    //TODO: add 'age' question
    let ageQuestionStepTitle = "How long is your Medical Information stored?"
    let agetextChoices = [
        ORKTextChoice(text: "1 Year", value: 0),
        ORKTextChoice(text: "10 Years", value: 1),
        ORKTextChoice(text: "15 Years", value: 2)
    ]
    let ageAnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: agetextChoices)
    
    let ageQuestionStep = ORKQuestionStep(identifier: "AgeChoiceQuestionStep", title: ageQuestionStepTitle, answer: ageAnswerFormat)
    ageQuestionStep.optional = false;
    steps += [ageQuestionStep]
    
    
    
    
    return ORKOrderedTask(identifier: "TryAgainTerms", steps: steps)
}
