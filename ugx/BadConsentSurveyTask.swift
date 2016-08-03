//
//  BadConsentSurveyTask.swift
//  This step will Show if the user answers a question wrong.
//
//  Created by Austin Vershel on 6/24/16.
//  Copyright © 2016 Austin Vershel. All rights reserved.
//

import Foundation
import ResearchKit

public var BadConsentSurveyTask: ORKOrderedTask {
    
    var steps = [ORKStep]()
    
    //TODO: add instructions step
    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
    instructionStep.optional = false;
    instructionStep.title = "Oops!"
    instructionStep.text = "Perhaps you may have misunderstood our Terms & Conditions.\nPlease click on the 'Learn More' link to review our Terms & Conditions."
    steps += [instructionStep]
    
    
    
    
    
    return ORKOrderedTask(identifier: "BadConsentSurveyTask", steps: steps)
}

