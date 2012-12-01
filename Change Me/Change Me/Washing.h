//
//  Washing.h
//  Change Me
//
//  Created by Tashnuba Jabbar on 30/11/2012.
//  Copyright 2012 AITL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "WashHand.h"

@interface Washing : CCNode {
	
	CGSize size;
	bool a, b, c, d, e, f;
	CCMenu *s1Menu;
	CCMenu *s2Menu;
	CCMenu *s3Menu;
	CCMenu *s4Menu;
	CCMenu *s5Menu;
	CCMenu *s6Menu;
}

+(CCScene *) scene;
- (void) a;
- (void) b;
- (void) c;
- (void) d;
- (void) e;
- (void) f;
- (void) washing;

@end
