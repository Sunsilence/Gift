//
//  HomePageScrollModel.h
//  Gift
//
//  Created by Silence on 16/11/23.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@class HomePageScrollData;
@class HomePageScrollDataTarget;

@protocol HomePageScrollDataBanners;

@interface HomePageScrollModel : JSONModel

@property (nonatomic,strong)NSNumber<Optional> *code;
@property (nonatomic,strong)HomePageScrollData<Optional> *data; //**
@property (nonatomic,copy)NSString<Optional> *message;

@end

@interface HomePageScrollData : JSONModel

@property (nonatomic,strong)NSArray<Optional,HomePageScrollDataBanners> *banners; //**

@end

@interface HomePageScrollDataBanners : JSONModel

@property (nonatomic,strong)NSArray<Optional> *ad_monitors; //**
@property (nonatomic,copy)NSString<Optional> *channel;
@property (nonatomic,strong)NSNumber<Optional> *bannersId;

@property (nonatomic,copy)NSString<Optional> *image_url;
@property (nonatomic,strong)NSNumber<Optional> *order;
@property (nonatomic,strong)NSNumber<Optional> *status;

@property (nonatomic,strong)HomePageScrollDataTarget<Optional> *target; //**
@property (nonatomic,strong)NSNumber<Optional> *target_id;
@property (nonatomic,copy)NSString<Optional> *target_type;

@property (nonatomic,copy)NSString<Optional> *target_url;
@property (nonatomic,copy)NSString<Optional> *type;
@property (nonatomic,copy)NSString<Optional> *webp_url;

@end

@interface HomePageScrollDataTarget : JSONModel

@property (nonatomic,copy)NSString<Optional> *banner_image_url;
@property (nonatomic,copy)NSString<Optional> *banner_webp_url;
@property (nonatomic,copy)NSString<Optional> *cover_image_url;

@property (nonatomic,copy)NSString<Optional> *cover_webp_url;
@property (nonatomic,strong)NSNumber<Optional> *created_at;
@property (nonatomic,strong)NSNumber<Optional> *targetId;

@property (nonatomic,strong)NSNumber<Optional> *posts_count;
@property (nonatomic,strong)NSNumber<Optional> *status;
@property (nonatomic,copy)NSString<Optional> *subtitle;

@property (nonatomic,copy)NSString<Optional> *title;
@property (nonatomic,strong)NSNumber<Optional> *updated_at;

@end

