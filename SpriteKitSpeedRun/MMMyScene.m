//
//  MMMyScene.m
//  SpriteKitSpeedRun
//
//  Created by Sean McMains on 5/19/14.
//  Copyright (c) 2014 Mutual Mobile. All rights reserved.
//

#import "MMMyScene.h"

@interface MMMyScene ()

@property (strong) SKSpriteNode *shipNode;

@end

@implementation MMMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {

        [self setupStarfield];
        [self setupShipNode];
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

-(void)setupStarfield {
    NSString *starfieldPath = [[NSBundle mainBundle] pathForResource:@"StarField" ofType:@"sks"];
    SKEmitterNode *starfieldNode = [NSKeyedUnarchiver unarchiveObjectWithFile:starfieldPath];
    starfieldNode.position = CGPointMake( CGRectGetMidX(self.frame), CGRectGetHeight(self.frame));

    starfieldNode.particleColorSequence = nil;
    starfieldNode.particleColor = [SKColor redColor];
    starfieldNode.particleColorBlueRange = 255.0;
    starfieldNode.particleColorGreenRange = 255.0;
    
    [self addChild:starfieldNode];
}

-(void)setupShipNode {
    SKSpriteNode *shipNode = [SKSpriteNode spriteNodeWithImageNamed:@"ship.png"];
    shipNode.position = CGPointMake( CGRectGetMidX(self.frame), 50);
    
    [self addChild:shipNode];
    self.shipNode = shipNode;
}


@end
