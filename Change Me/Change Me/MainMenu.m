//
//  MainMenu.m
//  Change Me
//
//  Created by Tashnuba Jabbar on 30/11/2012.
//  Copyright 2012 AITL. All rights reserved.
//

#import "MainMenu.h"


@implementation MainMenu

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	MainMenu *layer = [MainMenu node];
	
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
		
		CCSprite *bg = [CCSprite spriteWithFile:@"child-sliding-door.png"];
		bg.position = ccp(size.width / 2, size.height / 2);
		[self addChild:bg];
		
		/*
		CCMenuItem *level1 = [CCMenuItemFont itemWithString: @"Wash your hand" target: self selector:@selector(washHand)];
		CCMenuItem *level2 = [CCMenuItemFont itemWithString: @"Cut your neil & hair" target: self selector:@selector(neilHair)];
		CCMenuItem *level3 = [CCMenuItemFont itemWithString: @"Natural Resource" target: self selector:@selector(resource)];
		CCMenuItem *level4 = [CCMenuItemFont itemWithString: @"House hold hygiene" target: self selector:@selector(hygiene)];
		//level1.position = ccp(size.width / 2, size.height / 2 + 100);
		
		CCMenu *menu = [CCMenu menuWithItems:level1, level2, level3, level4, nil];
		[menu alignItemsVertically];
		[self addChild:menu];
		 */
		
		CCMenuItemImage *l1 = [CCMenuItemImage itemWithNormalImage:@"b1.png" selectedImage:@"b1.png" target:self selector:@selector(washHand)];
		CCMenu *l1Menu = [CCMenu menuWithItems:l1, nil];
		l1Menu.position = ccp(50, size.height - 50);
		[self addChild:l1Menu];
		
		CCMenuItemImage *l2 = [CCMenuItemImage itemWithNormalImage:@"b2.png" selectedImage:@"b2.png" target:self selector:@selector(neilHair)];
		CCMenu *l2Menu = [CCMenu menuWithItems:l2, nil];
		l2Menu.position = ccp(50, size.height - 130);
		[self addChild:l2Menu];
		
		CCMenuItemImage *l3 = [CCMenuItemImage itemWithNormalImage:@"b3.png" selectedImage:@"b3.png" target:self selector:@selector(neilHair)];
		CCMenu *l3Menu = [CCMenu menuWithItems:l3, nil];
		l3Menu.position = ccp(50, size.height - 210);
		[self addChild:l3Menu];
		
		CCMenuItemImage *l4 = [CCMenuItemImage itemWithNormalImage:@"b4.png" selectedImage:@"b4.png" target:self selector:@selector(neilHair)];
		CCMenu *l4Menu = [CCMenu menuWithItems:l4, nil];
		l4Menu.position = ccp(50, size.height - 290);
		[self addChild:l4Menu];
		
		CCMenuItemImage *l5 = [CCMenuItemImage itemWithNormalImage:@"b5.png" selectedImage:@"b5.png" target:self selector:@selector(neilHair)];
		CCMenu *l5Menu = [CCMenu menuWithItems:l5, nil];
		l5Menu.position = ccp(50, size.height - 370);
		[self addChild:l5Menu];
		
		CCMenuItemImage *l6 = [CCMenuItemImage itemWithNormalImage:@"b6.png" selectedImage:@"b6.png" target:self selector:@selector(backIntro)];
		CCMenu *l6Menu = [CCMenu menuWithItems:l6, nil];
		l6Menu.position = ccp(size.width - 50, size.height - 50);
		[self addChild:l6Menu];
		
		CCMenuItemImage *l8 = [CCMenuItemImage itemWithNormalImage:@"b8.png" selectedImage:@"b8.png" target:self selector:@selector(neilHair)];
		CCMenu *l8Menu = [CCMenu menuWithItems:l8, nil];
		l8Menu.position = ccp(size.width - 50, size.height - 130);
		[self addChild:l8Menu];
		
		CCMenuItemImage *l7 = [CCMenuItemImage itemWithNormalImage:@"b7.png" selectedImage:@"b7.png" target:self selector:@selector(neilHair)];
		CCMenu *l7Menu = [CCMenu menuWithItems:l7, nil];
		l7Menu.position = ccp(size.width - 50, size.height - 250);
		[self addChild:l7Menu];
	}
	return self;
}

- (void) washHand {
	
	[[CCDirector sharedDirector] replaceScene:[CCTransitionFlipX transitionWithDuration:0.5f scene:[WashIntro scene]]];
}

- (void) neilHair {
	
	UIAlertView* dialog = [[UIAlertView alloc] init];
	[dialog setDelegate:self];
	[dialog setTitle:@"Inactive"];
	[dialog setMessage:@"Coming soon..."];
	[dialog addButtonWithTitle:@"Ok"];
	[dialog show];
	[dialog release];
}

- (void) resource {
	
	
}

- (void) hygiene {
	
	
}

- (void) backIntro {
	
	[[CCDirector sharedDirector] replaceScene:[CCTransitionFlipX transitionWithDuration:0.5f scene:[Intro scene]]];
}

@end
