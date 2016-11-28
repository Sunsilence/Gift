//
//  HomePageDataModel.m
//  Gift
//
//  Created by Silence on 16/11/24.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import "HomePageDataModel.h"

@implementation HomePageDataModel

@end

@implementation HomePageSubData

@end

@implementation HomePageDataItems

+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"itemsId":@"id",@"temp":@"template"}];
}

@end

@implementation HomePageDataPaging

@end

@implementation HomePageItemAuthor

+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"authorId":@"id"}];
}

@end

@implementation HomePageItemColumn

+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"desc":@"description",@"itemId":@"id"}];
}

@end
