//
//  NSData+Hashes.h
//
//  Created by anivaros on 24.02.2020.
//  Copyright: Do whatever you want with this, i.e. Public Domain
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (Hashes)

@property (nonatomic, readonly) NSString *md5;
@property (nonatomic, readonly) NSString *sha1;
@property (nonatomic, readonly) NSString *sha224;
@property (nonatomic, readonly) NSString *sha256;
@property (nonatomic, readonly) NSString *sha384;
@property (nonatomic, readonly) NSString *sha512;

@property (nonatomic, readonly) NSData *md5Data;
@property (nonatomic, readonly) NSData *sha1Data;
@property (nonatomic, readonly) NSData *sha224Data;
@property (nonatomic, readonly) NSData *sha256Data;
@property (nonatomic, readonly) NSData *sha384Data;
@property (nonatomic, readonly) NSData *sha512Data;

@end

NS_ASSUME_NONNULL_END
