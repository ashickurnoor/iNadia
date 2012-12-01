//
//  Washing.m
//  Change Me
//
//  Created by Tashnuba Jabbar on 30/11/2012.
//  Copyright 2012 AITL. All rights reserved.
//

#import "Washing.h"


@implementation Washing

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	Washing *layer = [Washing node];
	
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

		
		a = NO;
		b = NO;
		c = NO;
		d = NO;
		e = NO;
		f = NO;
		
		CCSprite *bg = [CCSprite spriteWithFile:@"washroom.png"];
		bg.position = ccp(size.width / 2, size.height / 2);
		[self addChild:bg];
		
		CCMenuItemImage *dolp = [CCMenuItemImage itemWithNormalImage:@"dolphin.gif" selectedImage:@"dolphin.gif" target:self selector:@selector(washing)];
		CCMenu *dolpMenu = [CCMenu menuWithItems:dolp, nil];
		dolpMenu.position = ccp(50, size.height - 50);
		[self addChild:dolpMenu];
		
		CCMenuItemImage *s1 = [CCMenuItemImage itemWithNormalImage:@"wash_hand_1.jpg" selectedImage:@"wash_hand_1.jpg" target:self selector:@selector(a)];
		s1Menu = [CCMenu menuWithItems:s1, nil];
		s1Menu.position = ccp(size.width / 2, size.height - 100);
		[self addChild:s1Menu];
		
		CCMenuItemImage *s2 = [CCMenuItemImage itemWithNormalImage:@"wash_hand_2.jpg" selectedImage:@"wash_hand_2.jpg" target:self selector:@selector(b)];
		s2Menu = [CCMenu menuWithItems:s2, nil];
		s2Menu.position = ccp(size.width / 2 + 100, size.height - 200);
		[self addChild:s2Menu];
		
		CCMenuItemImage *s3 = [CCMenuItemImage itemWithNormalImage:@"wash_hand_3.jpg" selectedImage:@"wash_hand_3.jpg" target:self selector:@selector(c)];
		s3Menu = [CCMenu menuWithItems:s3, nil];
		s3Menu.position = ccp(size.width / 2 + 100, size.height - 300);
		[self addChild:s3Menu];
		
		CCMenuItemImage *s4 = [CCMenuItemImage itemWithNormalImage:@"wash_hand_4.jpg" selectedImage:@"wash_hand_4.jpg" target:self selector:@selector(d)];
		s4Menu = [CCMenu menuWithItems:s4, nil];
		s4Menu.position = ccp(size.width / 2, size.height - 400);
		[self addChild:s4Menu];
		
		CCMenuItemImage *s5 = [CCMenuItemImage itemWithNormalImage:@"wash_hand_5.jpg" selectedImage:@"wash_hand_5.jpg" target:self selector:@selector(e)];
		s5Menu = [CCMenu menuWithItems:s5, nil];
		s5Menu.position = ccp(100, size.height - 300);
		[self addChild:s5Menu];
		
		CCMenuItemImage *s6 = [CCMenuItemImage itemWithNormalImage:@"wash_hand_6.jpg" selectedImage:@"wash_hand_6.jpg" target:self selector:@selector(f)];
		s6Menu = [CCMenu menuWithItems:s6, nil];
		s6Menu.position = ccp(100, size.height - 200);
		[self addChild:s6Menu];
		
	}
	
	return self;
}

- (void) a {
	
	a = YES;
	//s1Menu.visible = false;
	
	[s1Menu runAction:[CCMoveTo actionWithDuration:0.5 position:ccp(s1Menu.position.x, -40)]];
}

- (void) b {
	
	if (a) {
		b = YES;
		//s2Menu.visible = false;
		
		[s2Menu runAction:[CCMoveTo actionWithDuration:0.5 position:ccp(s2Menu.position.x, -40)]];
	}
}

- (void) c {
	
	if (a && b) {
		c = YES;
		//s3Menu.visible = false;
		
		[s3Menu runAction:[CCMoveTo actionWithDuration:0.5 position:ccp(s3Menu.position.x, -40)]];
	}
}

- (void) d {
	
	if (a && b && c) {
		d = YES;
		//s4Menu.visible = false;
		
		[s4Menu runAction:[CCMoveTo actionWithDuration:0.5 position:ccp(s4Menu.position.x, -40)]];
	}
}

- (void) e {
	
	if (a && b && c && d) {
		e = YES;
		//s5Menu.visible = false;
		
		[s5Menu runAction:[CCMoveTo actionWithDuration:0.5 position:ccp(s5Menu.position.x, -40)]];
	}
}

- (void) f {
	
	if (a && b && c && d && e) {
		f = YES;
		s6Menu.visible = false;
		
		NSUserDefaults *gameDefault = [NSUserDefaults standardUserDefaults];
		[gameDefault setInteger:1 forKey:@"wash"];
		
		[[CCDirector sharedDirector] replaceScene:[CCTransitionFlipX transitionWithDuration:0.5f scene:[WashHand scene]]];
	}
}

- (void) washing {
	
	UIAlertView* dialog = [[UIAlertView alloc] init];
	[dialog setDelegate:self];
	[dialog setTitle:@"Wash your hand!"];
	[dialog setMessage:@"Tap the images with right sequence to wash the hand (clockwise)"];
	[dialog addButtonWithTitle:@"Ok"];
	[dialog show];
	[dialog release];
}

@end
