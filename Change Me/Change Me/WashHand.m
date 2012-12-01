//
//  WashHand.m
//  Change Me
//
//  Created by Tashnuba Jabbar on 30/11/2012.
//  Copyright 2012 AITL. All rights reserved.
//

#import "WashHand.h"


@implementation WashHand

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	WashHand *layer = [WashHand node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init]) ) {
		
		size = [[CCDirector sharedDirector] winSize];
		director = [CCDirector sharedDirector];
		
		bg = [CCSprite spriteWithFile:@"bg-l1.jpg"];
		bg.position = ccp(size.width / 2, size.height / 2);
		[self addChild:bg];
		
		
		CCMenuItemImage *dolp = [CCMenuItemImage itemWithNormalImage:@"dolphin.gif" selectedImage:@"dolphin.gif" target:self selector:@selector(eatPlease)];
		CCMenu *dolpMenu = [CCMenu menuWithItems:dolp, nil];
		dolpMenu.position = ccp(50, size.height - 50);
		[self addChild:dolpMenu];
		
		CCMenuItemImage *handWash = [CCMenuItemImage itemWithNormalImage:@"wash_hand_icon.gif" selectedImage:@"wash_hand_icon.gif" target:self selector:@selector(washing)];
		CCMenu *handWashMenu = [CCMenu menuWithItems:handWash, nil];
		handWashMenu.position = ccp(size.width - 50, 50);
		[self addChild:handWashMenu];
		
		
		//NSUserDefaults
		gameDefault = [NSUserDefaults standardUserDefaults];
	}
	
	[[director touchDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
	
	return self;
}

- (BOOL) ccTouchBegan:(UITouch *) touch withEvent:(UIEvent *) event {
	
	CGPoint touchLocation = [self convertTouchToNodeSpace:touch];
	
	if (CGRectContainsPoint(bg.boundingBox, touchLocation)) {
		
		NSInteger gameLevel = [gameDefault integerForKey:@"wash"];
		
		if (gameLevel == 1) {
			[self congrats];
		} else {
			[self washNotice];
		}
	}
	
	return TRUE;
}

- (void) backIntro {
	
	[[CCDirector sharedDirector] replaceScene:[CCTransitionFlipX transitionWithDuration:0.5f scene:[MainMenu scene]]];
}

- (void) eatPlease {
	
	UIAlertView* dialog = [[UIAlertView alloc] init];
	[dialog setDelegate:self];
	[dialog setTitle:@"i"];
	[dialog setMessage:@"Tap on the hand wash icon below"];
	[dialog addButtonWithTitle:@"Ok"];
	[dialog show];
	[dialog release];
}

- (void) washing {
	
	[[CCDirector sharedDirector] replaceScene:[CCTransitionFlipX transitionWithDuration:0.5f scene:[Washing scene]]];
}

- (void) washNotice {
    
	UIAlertView* dialog = [[UIAlertView alloc] init];
	[dialog setDelegate:self];
	[dialog setTitle:@"i"];
	[dialog setMessage:@"Wash your hand first"];
	[dialog addButtonWithTitle:@"Ok"];
	[dialog show];
	[dialog release];
}

- (void) congrats {
	
	CCSprite *sp = [CCSprite spriteWithFile:@"happy-eating.jpg"];
	sp.position = ccp(size.width / 2, 200);
	[self addChild:sp];
	
	CCMenuItemImage *l6 = [CCMenuItemImage itemWithNormalImage:@"b6.png" selectedImage:@"b6.png" target:self selector:@selector(backIntro)];
	CCMenu *l6Menu = [CCMenu menuWithItems:l6, nil];
	l6Menu.position = ccp(size.width - 100, size.height - 100);
	l6Menu.scale = 0.7f;
	[self addChild:l6Menu];
    
	UIAlertView* dialog = [[UIAlertView alloc] init];
	[dialog setDelegate:self];
	[dialog setTitle:@"i"];
	[dialog setMessage:@"Get your food. Now you are free to eat."];
	[dialog addButtonWithTitle:@"Ok"];
	[dialog show];
	[dialog release];
}

@end
