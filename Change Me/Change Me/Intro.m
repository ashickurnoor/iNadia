//
//  Intro.m
//  Change Me
//
//  Created by Tashnuba Jabbar on 30/11/2012.
//  Copyright 2012 AITL. All rights reserved.
//

#import "Intro.h"


@implementation Intro

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	Intro *layer = [Intro node];
	
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
		
		introImg = [CCSprite spriteWithFile:@"introImg.png"];
		introImg.position = ccp(size.width / 2, size.height / 2);
		[self addChild:introImg];
		
		//[self performSelector:@selector(swipeImage) withObject:Nil afterDelay:4.0f];
		[self performSelector:@selector(loadMainMenu) withObject:Nil afterDelay:6.0f];
		
	}
	return self;
}

- (void) swipeImage {
	
	[introImg runAction:[CCMoveTo actionWithDuration:2.0f position:ccp(0, size.height / 2)]];
	[self performSelector:@selector(loadMainMenu) withObject:Nil afterDelay:6.0f];
}

- (void) loadMainMenu {
	
	[[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInR transitionWithDuration:2.0f scene:[MainMenu scene]]];
}

@end
