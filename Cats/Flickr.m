//
//  Flickr.m
//  Cats
//
//  Created by Elle Ti on 2017-08-14.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "Flickr.h"

@implementation Flickr

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    if (self = [super init])
    {
        _farm = [dictionary objectForKey:@"farm"];
        _photoID = [dictionary objectForKey:@"id"];
        _server = [dictionary objectForKey:@"server"];
        _secret = [dictionary objectForKey:@"secret"];
        _title = [dictionary objectForKey:@"title"];
    }
    return self;
}

- (NSURL *)imageURL
{
    NSString *string = [NSString stringWithFormat:@"https://farm%@.staticflickr.com/%@/%@_%@.jpg", self.farm, self.server, self.photoID, self.secret];
    
    NSURL *urlString = [NSURL URLWithString:string];
    return urlString;
}

@end
