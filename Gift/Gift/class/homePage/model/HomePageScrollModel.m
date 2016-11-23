//
//  HomePageScrollModel.m
//  Gift
//
//  Created by Silence on 16/11/23.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import "HomePageScrollModel.h"

@implementation HomePageScrollModel

@end

@implementation HomePageScrollData



@end

@implementation HomePageScrollDataBanners

+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"bannersId":@"id"}];
}

@end

@implementation HomePageScrollDataTarget

+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"targetId":@"id"}];
}

@end
