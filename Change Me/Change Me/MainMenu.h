//
//  MainMenu.h
//  Change Me
//
//  Created by Tashnuba Jabbar on 30/11/2012.
//  Copyright 2012 AITL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "WashIntro.h"
#import "Intro.h"

@interface MainMenu : CCNode {
    
	CGSize size;
}

+(CCScene *) scene;
- (void) washHand;
- (void) neilHair;
- (void) resource;
- (void) hygiene;

@end
