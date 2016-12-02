//
//  ClassifyStrategyModel.h
//  Gift
//
//  Created by Silence on 16/11/30.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@class ClassifyData;


@protocol ClassifyDataChannel;
@protocol ClassifyDataChannels;

@interface ClassifyStrategyModel : JSONModel

@property (nonatomic,strong)NSNumber<Optional> *code;
@property (nonatomic,strong)ClassifyData<Optional> *data;
@property (nonatomic,copy)NSString<Optional> *message;

@end

@interface ClassifyData : JSONModel

@property (nonatomic,strong)NSArray<Optional,ClassifyDataChannel> *channel_groups;

@end

@interface ClassifyDataChannel : JSONModel

@property (nonatomic,strong)NSArray<Optional,ClassifyDataChannels> *channels;
@property (nonatomic,strong)NSNumber<Optional> *channelId;
@property (nonatomic,copy)NSString<Optional> *name;

@property (nonatomic,strong)NSNumber<Optional> *order;
@property (nonatomic,strong)NSNumber<Optional> *status;

@end

@interface ClassifyDataChannels : JSONModel

@property (nonatomic,copy)NSString<Optional> *cover_image_url;
@property (nonatomic,strong)NSNumber<Optional> *group_id;
@property (nonatomic,copy)NSString<Optional> *icon_url;

@property (nonatomic,strong)NSNumber<Optional> *channelsId;
@property (nonatomic,strong)NSNumber<Optional> *items_count;
@property (nonatomic,copy)NSString<Optional> *name;

@property (nonatomic,strong)NSNumber<Optional> *order;
@property (nonatomic,strong)NSNumber<Optional> *status;
@property (nonatomic,copy)NSString<Optional> *url;

@end
