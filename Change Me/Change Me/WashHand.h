//
//  WashHand.h
//  Change Me
//
//  Created by Tashnuba Jabbar on 30/11/2012.
//  Copyright 2012 AITL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Washing.h"
#import "MainMenu.h"

@interface WashHand : CCLayer {
    
	CGSize size;
	CCDirector *director;
	CCSprite *bg;
	NSUserDefaults *gameDefault;
}

+(CCScene *) scene;
- (void) washing;
- (void) washNotice;
- (void) congrats;
- (void) eatPlease;

@end
