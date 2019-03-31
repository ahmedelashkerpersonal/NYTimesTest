//
//  ArticleDetailsViewController.m
//  NYTimesTest
//
//  Created by Ahmed Elashker on 3/31/19.
//  Copyright © 2019 Ahmed Elashker. All rights reserved.
//

#import "ArticleDetailsViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ArticleDetailsViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) IBOutlet UILabel *lblAbstract;
@property (strong, nonatomic) IBOutlet UILabel *lblType;
@property (strong, nonatomic) IBOutlet UILabel *lblBy;
@property (strong, nonatomic) IBOutlet UILabel *lblSource;
@property (strong, nonatomic) IBOutlet UILabel *lblDate;

@end

@implementation ArticleDetailsViewController

#pragma mark - View controller life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _lblTitle.text = _article.title;
    _lblAbstract.text = _article.abstract;
    _lblSource.text = _article.source;
    _lblType.text = _article.type;
    _lblBy.text = _article.byline;
    _lblDate.text = _article.published_date;
    
    NSMutableArray *mediaMetadata = [NSMutableArray arrayWithArray:[_article.media.firstObject valueForKey:@"media-metadata"]];
    [mediaMetadata filterUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings) {
        return [[evaluatedObject valueForKey:@"format"] isEqualToString:@"mediumThreeByTwo440"];
    }]];
    NSString *thumbURL = [mediaMetadata.firstObject valueForKey:@"url"];
    [_imgView sd_setImageWithURL:[NSURL URLWithString:thumbURL]];
}

#pragma mark - IB Actions
- (IBAction)openFullStory:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: _article.url]
                                       options:@{}
                             completionHandler:nil];
}

@end
