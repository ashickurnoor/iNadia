//
//  WashIntro.m
//  Change Me
//
//  Created by Tashnuba Jabbar on 01/12/2012.
//  Copyright 2012 AITL. All rights reserved.
//

#import "WashIntro.h"

@implementation WashIntro

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	WashIntro *layer = [WashIntro node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

- (void) nextScene {
	
	//[[CCDirector sharedDirector] replaceScene:[CCTransitionFlipX transitionWithDuration:0.5f scene:[WashHand scene]]];
	[[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.5 scene:[WashHand scene] withColor:ccWHITE]];
}

- (void) move3 {
	
	[bg runAction:[CCMoveTo actionWithDuration:2.0f position:ccp(-size.width, size.height / 2)]];
	[self performSelector:@selector(nextScene) withObject:Nil afterDelay:7.0f];
}

- (void) move2 {
	
	[bg runAction:[CCMoveTo actionWithDuration:2.0f position:ccp(0, size.height / 2)]];
	[self performSelector:@selector(move3) withObject:Nil afterDelay:7.0f];
}

- (void) move1 {
	
	[bg runAction:[CCMoveTo actionWithDuration:2.0f position:ccp(size.width, size.height / 2)]];
	[self performSelector:@selector(move2) withObject:Nil afterDelay:7.0f];
}

-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init]) ) {
		
		size = [[CCDirector sharedDirector] winSize];
		
		bg = [CCSprite spriteWithFile:@"story1.png"];
		bg.position = ccp((size.width+size.width), size.height / 2);
		[self addChild:bg];
		
		NSUserDefaults *gameDefault = [NSUserDefaults standardUserDefaults];
		[gameDefault setInteger:0 forKey:@"wash"];
		
		[self performSelector:@selector(move1) withObject:Nil afterDelay:5.0f];
	}
	
	return self;
}

@end
