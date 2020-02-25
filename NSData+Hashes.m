//
//  NSData+Hashes.m
//
//  Created by anivaros on 24.02.2020.
//  Copyright: Do whatever you want with this, i.e. Public Domain
//

#import "NSData+Hashes.h"
#import "NSData+Hashes_Internal.h"

@implementation NSData (Hashes)

- (NSString *)md5
{
    return NSStringCCHashFunction(CC_MD5, CC_MD5_DIGEST_LENGTH, self);
}

- (NSString *)sha1
{
    return NSStringCCHashFunction(CC_SHA1, CC_SHA1_DIGEST_LENGTH, self);
}

- (NSString *)sha224
{
    return NSStringCCHashFunction(CC_SHA224, CC_SHA224_DIGEST_LENGTH, self);
}

- (NSString *)sha256
{
    return NSStringCCHashFunction(CC_SHA256, CC_SHA256_DIGEST_LENGTH, self);
}

- (NSString *)sha384
{
    return NSStringCCHashFunction(CC_SHA384, CC_SHA384_DIGEST_LENGTH, self);
}
- (NSString *)sha512
{
    return NSStringCCHashFunction(CC_SHA512, CC_SHA512_DIGEST_LENGTH, self);
}

- (NSData *)md5Data
{
    return NSDataCCHashFunction(CC_MD5, CC_MD5_DIGEST_LENGTH, self);
}

- (NSData *)sha1Data
{
    return NSDataCCHashFunction(CC_SHA1, CC_SHA1_DIGEST_LENGTH, self);
}

- (NSData *)sha224Data
{
    return NSDataCCHashFunction(CC_SHA224, CC_SHA224_DIGEST_LENGTH, self);
}

- (NSData *)sha256Data
{
    return NSDataCCHashFunction(CC_SHA256, CC_SHA256_DIGEST_LENGTH, self);
}

- (NSData *)sha384Data
{
    return NSDataCCHashFunction(CC_SHA384, CC_SHA384_DIGEST_LENGTH, self);
}
- (NSData *)sha512Data
{
    return NSDataCCHashFunction(CC_SHA512, CC_SHA512_DIGEST_LENGTH, self);
}

@end
