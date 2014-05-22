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
@property (strong) SKLabelNode *scoreNode;

@end

@implementation MMMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {

        [self setupStarfield];
        [self setupShipNode];
        [self setupScoreNode];
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

-(void)setupScoreNode {
    SKLabelNode *oneUpNode = [SKLabelNode labelNodeWithFontNamed:@"Futura-CondensedExtraBold"];
    oneUpNode.fontColor = [SKColor whiteColor];
    oneUpNode.position = CGPointMake( 50, CGRectGetMaxY(self.frame) - 50);
    oneUpNode.text = @"1UP";
    
    SKLabelNode *scoreNode = [SKLabelNode labelNodeWithFontNamed:@"Futura-CondensedExtraBold"];
    scoreNode.fontColor = [SKColor redColor];
    scoreNode.position = CGPointMake( 50, CGRectGetMaxY(self.frame) - 100 );
    scoreNode.text = @"0";
    
    [self addChild:oneUpNode];
    [self addChild:scoreNode];
    self.scoreNode = scoreNode;
}



@end
