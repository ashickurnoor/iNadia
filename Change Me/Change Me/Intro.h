//
//  Intro.h
//  Change Me
//
//  Created by Tashnuba Jabbar on 30/11/2012.
//  Copyright 2012 AITL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "MainMenu.h"

@interface Intro : CCNode {
    
	CGSize size;
	CCSprite *introImg;
}

+ (CCScene *) scene;
- (void) swipeImage;

@end
