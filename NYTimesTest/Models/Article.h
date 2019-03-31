//
//  Article.h
//  NYTimesTest
//
//  Created by Ahmed Elashker on 3/31/19.
//  Copyright © 2019 Ahmed Elashker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Article : NSObject

@property (nonatomic, copy) NSString* url;
@property (nonatomic, copy) NSString* adx_keywords;
@property (nonatomic, copy) NSString* column;
@property (nonatomic, copy) NSString* section;
@property (nonatomic, copy) NSString* byline;
@property (nonatomic, copy) NSString* type;
@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* abstract;
@property (nonatomic, copy) NSString* published_date;
@property (nonatomic, copy) NSString* source;
@property (nonatomic) NSInteger identifier;
@property (nonatomic) NSInteger asset_id;
@property (nonatomic) NSInteger views;
@property (nonatomic, copy) NSArray* des_facet;
@property (nonatomic, copy) NSArray* org_facet;
@property (nonatomic, copy) NSArray* per_facet;
@property (nonatomic, copy) NSArray* geo_facet;
@property (nonatomic, copy) NSArray* media;

@end

NS_ASSUME_NONNULL_END
