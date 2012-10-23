//
//  StandardShootComponent.h
//  Drop
//
//  Created by Aaron on 12-10-14.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface StandardShootComponent : CCSprite {
    float updateCount;
    float shootFrequency;
    NSString* bulletFrameName;
}
@property (nonatomic) float shootFrequency;
//设置为copy属性，保证为值拷贝
@property (nonatomic,copy) NSString* bulletFrameName;

@end