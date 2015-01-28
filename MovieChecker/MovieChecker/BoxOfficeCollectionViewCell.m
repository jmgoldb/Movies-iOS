//
//  BoxOfficeCollectionViewCell.m
//  MovieChecker
//
//  Created by Joseph Goldberg on 1/27/15.
//  Copyright (c) 2015 Vokal. All rights reserved.
//

#import <SDWebImage/UIImageView+WebCache.h>

#import "BoxOfficeCollectionViewCell.h"

@interface BoxOfficeCollectionViewCell ()

@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end

@implementation BoxOfficeCollectionViewCell

- (void)setThumbnailImageFromURL:(NSURL *)url
{
    [self.thumbnailImageView sd_setImageWithURL:url completed:^(UIImage *image,
                                                                NSError *error,
                                                                SDImageCacheType cacheType,
                                                                NSURL *imageURL) {
        self.thumbnailImageView.image = image;
    }];
}

@end
