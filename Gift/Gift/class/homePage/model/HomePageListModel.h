//
//  HomePageListModel.h
//  Gift
//
//  Created by Silence on 16/11/24.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@class HomePageListData;

@protocol HomePageListBanners;

@interface HomePageListModel : JSONModel

@property (nonatomic,strong)NSNumber<Optional> *code;
@property (nonatomic,strong)HomePageListData<Optional> *data;  //**
@property (nonatomic,copy)NSString<Optional> *message;

@end

@interface HomePageListData : JSONModel

@property (nonatomic,strong)NSArray<Optional,HomePageListBanners> *secondary_banners;  //**

@end

@interface HomePageListBanners : JSONModel

@property (nonatomic,strong)NSArray<Optional> *ad_monitors;
@property (nonatomic,strong)NSNumber<Optional> *bannersId;
@property (nonatomic,copy)NSString<Optional> *image_url;

@property (nonatomic,copy)NSString<Optional> *target_url;
@property (nonatomic,copy)NSString<Optional> *webp_url;

@end


