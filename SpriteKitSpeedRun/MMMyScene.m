//
//  MMMyScene.m
//  SpriteKitSpeedRun
//
//  Created by Sean McMains on 5/19/14.
//  Copyright (c) 2014 Mutual Mobile. All rights reserved.
//

#import "MMMyScene.h"

@implementation MMMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
    
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
