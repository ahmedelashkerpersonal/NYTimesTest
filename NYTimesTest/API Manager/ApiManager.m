//
//  ApiManager.m
//  NYTimesTest
//
//  Created by Ahmed Elashker on 3/31/19.
//  Copyright © 2019 Ahmed Elashker. All rights reserved.
//

#import "ApiManager.h"
#import "Article.h"
#import <RestKit.h>

@implementation ApiManager

- (void)loadArticles
{
    RKObjectMapping* articleMapping = [RKObjectMapping mappingForClass:[Article class]];
    [articleMapping addAttributeMappingsFromDictionary:@{
                                                         @"url": @"url",
                                                         @"adx_keywords": @"adx_keywords",
                                                         @"column": @"column",
                                                         @"section": @"section",
                                                         @"byline": @"byline",
                                                         @"type": @"type",
                                                         @"title": @"title",
                                                         @"abstract": @"abstract",
                                                         @"published_date": @"published_date",
                                                         @"source": @"source",
                                                         @"id": @"identifier",
                                                         @"asset_id": @"asset_id",
                                                         @"views": @"views",
                                                         @"des_facet": @"des_facet",
                                                         @"org_facet": @"org_facet",
                                                         @"per_facet": @"per_facet",
                                                         @"geo_facet": @"geo_facet",
                                                         @"media": @"media",
                                                         }];
    
    RKResponseDescriptor *responseDescriptor = [RKResponseDescriptor responseDescriptorWithMapping:articleMapping method:RKRequestMethodAny pathPattern:nil keyPath:@"results" statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    
    NSURL *URL = [NSURL URLWithString:@"http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/7.json?api-key=AM6gqQ1FupBK4Vl1Zl1aLOhmDkXhHmYZ"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    RKObjectRequestOperation *objectRequestOperation = [[RKObjectRequestOperation alloc] initWithRequest:request responseDescriptors:@[ responseDescriptor ]];
    [objectRequestOperation setCompletionBlockWithSuccess:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
        RKLogInfo(@"Load collection of Articles: %@", mappingResult.array);
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        RKLogError(@"Operation failed with error: %@", error);
    }];
    
    [objectRequestOperation start];
}

@end
