//
//  ArticlesViewController.m
//  NYTimesTest
//
//  Created by Ahmed Elashker on 3/31/19.
//  Copyright © 2019 Ahmed Elashker. All rights reserved.
//

#import "ArticlesViewController.h"
#import "ApiManager.h"
#import "Article.h"
#import "ArticleDetailsViewController.h"
#import "NYMostPopCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ArticlesViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *articles;
@property (strong, nonatomic) IBOutlet UITableView *tableArticles;

@end

@implementation ArticlesViewController

#pragma mark - View controller life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"NY Times Most Popular";
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(articlesLoaded:)
                                                 name:@"gotMostPopArticles"
                                               object:nil];
    
    [[ApiManager new] loadArticles];
}

#pragma mark - Notification handler
- (void)articlesLoaded:(NSDictionary *)notification {
    _articles = [[notification valueForKey:@"userInfo"] valueForKey:@"articles"];
    [_tableArticles reloadData];
}

#pragma mark - Table view methods
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NYMostPopCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NYMostPopCell"];
    Article *article = [_articles objectAtIndex:indexPath.row];
    cell.lblTitle.text = article.title;
    cell.lblBy.text = article.byline;
    cell.lblDate.text = article.published_date;
    
    // Getting standard thumbnail's URL
    NSMutableArray *mediaMetadata = [NSMutableArray arrayWithArray:[article.media.firstObject valueForKey:@"media-metadata"]];
    [mediaMetadata filterUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings) {
        return [[evaluatedObject valueForKey:@"format"] isEqualToString:@"Standard Thumbnail"];
    }]];
    NSString *thumbURL = [mediaMetadata.firstObject valueForKey:@"url"];
    [cell.imgThumb sd_setImageWithURL:[NSURL URLWithString:thumbURL]];
    
    // Setting cell tag to use later on navigation
    cell.tag = indexPath.row;
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _articles.count;
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NYMostPopCell *cell = sender;
    Article *selectedArticle = [_articles objectAtIndex:cell.tag];
    ArticleDetailsViewController *advc = [segue destinationViewController];
    advc.article = selectedArticle;
    [_tableArticles deselectRowAtIndexPath:_tableArticles.indexPathForSelectedRow
                                  animated:NO];
}
@end
