//
//  ClassifyStrategyModel.m
//  Gift
//
//  Created by Silence on 16/11/30.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import "ClassifyStrategyModel.h"

@implementation ClassifyStrategyModel

@end

@implementation ClassifyData

@end

@implementation ClassifyDataChannel

+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"channelId":@"id"}];
}

@end

@implementation ClassifyDataChannels

+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"channelsId":@"id"}];
}

@end
