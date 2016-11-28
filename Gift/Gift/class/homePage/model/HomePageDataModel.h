//
//  HomePageDataModel.h
//  Gift
//
//  Created by Silence on 16/11/24.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@class HomePageSubData;
@class HomePageDataPaging;
@class HomePageItemAuthor;
@class HomePageItemColumn;

@protocol HomePageDataItems;
@protocol NSNumber;

@interface HomePageDataModel : JSONModel

@property (nonatomic,strong)NSNumber<Optional> *code;
@property (nonatomic,strong)HomePageSubData<Optional> *data;  //**
@property (nonatomic,copy)NSString<Optional> *message;

@end

@interface HomePageSubData : JSONModel

@property (nonatomic,strong)NSArray<Optional,HomePageDataItems> *items;  //**
@property (nonatomic,strong)HomePageDataPaging<Optional> *paging;  //**

@end

@interface HomePageDataItems : JSONModel

@property (nonatomic,strong)NSArray<Optional> *ad_monitors;  //***
@property (nonatomic,strong)NSNumber<Optional> *approved_at;
@property (nonatomic,strong)HomePageItemAuthor<Optional> *author;  //***

@property (nonatomic,strong)HomePageItemColumn<Optional> *column;  //***
@property (nonatomic,strong)NSNumber<Optional> *content_type;
@property (nonatomic,copy)NSString<Optional> *content_url;

@property (nonatomic,copy)NSString<Optional> *cover_animated_webp_url;
@property (nonatomic,copy)NSString<Optional> *cover_image_url;
@property (nonatomic,copy)NSString<Optional> *cover_webp_url;

@property (nonatomic,strong)NSNumber<Optional> *created_at;
@property (nonatomic,strong)NSNumber<Optional> *editor_id;
@property (nonatomic,strong)NSArray<Optional,NSNumber> *feature_list;  //***

@property (nonatomic,strong)NSNumber<Optional> *hidden_cover_image;
@property (nonatomic,strong)NSNumber<Optional> *itemsId;  //---
@property (nonatomic,copy)NSString<Optional> *introduction;

@property (nonatomic,strong)NSArray<Optional> *labels;  //***
@property (nonatomic,strong)NSNumber<Optional> *liked;
@property (nonatomic,strong)NSNumber<Optional> *likes_count;

@property (nonatomic,copy)NSString<Optional> *limit_end_at;
@property (nonatomic,strong)NSNumber<Optional> *media_type;
@property (nonatomic,strong)NSNumber<Optional> *published_at;

@property (nonatomic,copy)NSString<Optional> *share_msg;
@property (nonatomic,copy)NSString<Optional> *short_title;
@property (nonatomic,strong)NSNumber<Optional> *status;

@property (nonatomic,copy)NSString<Optional> *temp;  //---
@property (nonatomic,copy)NSString<Optional> *title;
@property (nonatomic,copy)NSString<Optional> *type;

@property (nonatomic,strong)NSNumber<Optional> *updated_at;
@property (nonatomic,copy)NSString<Optional> *url;

@end

@interface HomePageDataPaging : JSONModel

@property (nonatomic,copy)NSString<Optional> *next_url;

@end

@interface HomePageItemAuthor : JSONModel

@property (nonatomic,copy)NSString<Optional> *avatar_url;
@property (nonatomic,copy)NSString<Optional> *avatar_webp_url;
@property (nonatomic,strong)NSNumber<Optional> *created_at;

@property (nonatomic,strong)NSNumber<Optional> *authorId; //---
@property (nonatomic,copy)NSString<Optional> *introduction;
@property (nonatomic,copy)NSString<Optional> *nickname;

@end

@interface HomePageItemColumn : JSONModel

@property (nonatomic,copy)NSString<Optional> *banner_image_url;
@property (nonatomic,copy)NSString<Optional> *category;
@property (nonatomic,copy)NSString<Optional> *cover_image_url;

@property (nonatomic,strong)NSNumber<Optional> *created_at;
@property (nonatomic,copy)NSString<Optional> *desc;  //---
@property (nonatomic,strong)NSNumber<Optional> *itemId;  //---

@property (nonatomic,strong)NSNumber<Optional> *order;
@property (nonatomic,strong)NSNumber<Optional> *post_published_at;
@property (nonatomic,strong)NSNumber<Optional> *status;

@property (nonatomic,copy)NSString<Optional> *subtitle;
@property (nonatomic,copy)NSString<Optional> *title;
@property (nonatomic,strong)NSNumber<Optional> *updated_at;

@end

