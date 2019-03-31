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

//"url": "https://www.nytimes.com/interactive/2019/03/24/us/politics/barr-letter-mueller-report.html",
//"adx_keywords": "Mueller, Robert S III;Russian Interference in 2016 US Elections and Ties to Trump Associates;Trump, Donald J;Justice Department;Barr, William P",
//"column": "",
//"section": "U.S.",
//"byline": "By THE NEW YORK TIMES",
//"type": "Interactive",
//"title": "Read Attorney General William Barr’s Summary of the Mueller Report",
//"abstract": "The letter, by Attorney General William P. Barr, details the main findings of the special counsel’s two-year investigation into Russian interference in the 2016 presidential election.",
//"published_date": "2019-03-24",
//"source": "The New York Times",
//"id": 100000006374989,
//"asset_id": 100000006374989,
//"views": 4,
//"des_facet": [
//              "RUSSIAN INTERFERENCE IN 2016 US ELECTIONS AND TIES TO TRUMP ASSOCIATES"
//              ],
//"org_facet": [
//              "JUSTICE DEPARTMENT"
//              ],
//"per_facet": [
//              "MUELLER, ROBERT S III",
//              "TRUMP, DONALD J",
//              "BARR, WILLIAM P"
//              ],
//"geo_facet": "",
//"media": [
//          {
//              "type": "image",
//              "subtype": "photo",
//              "caption": null,
//              "copyright": null,
//              "approved_for_syndication": 0,
//              "media-metadata": [
//                                 {
//                                     "url": "https://static01.nyt.com/images/2019/03/24/us/politics/barr-letter-mueller-report-1553456906394/barr-letter-mueller-report-1553456906394-square320-v3.jpg",
//                                     "format": "square320",
//                                     "height": 320,
//                                     "width": 320
//                                 },
//                                 {
//                                     "url": "https://static01.nyt.com/images/2019/03/24/us/politics/barr-letter-mueller-report-1553456906394/barr-letter-mueller-report-1553456906394-thumbStandard-v3.jpg",
//                                     "format": "Standard Thumbnail",
//                                     "height": 75,
//                                     "width": 75
//                                 }
//                                 ]
//          }
//          ]
