//
//  HomePageListModel.m
//  Gift
//
//  Created by Silence on 16/11/24.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import "HomePageListModel.h"

@implementation HomePageListModel

@end

@implementation HomePageListData

@end

@implementation HomePageListBanners

+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"bannersId":@"id"}];
}

@end
