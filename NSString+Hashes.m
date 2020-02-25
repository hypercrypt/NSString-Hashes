//
//  NSString+Hashes.m
//
//  Created by Klaus-Peter Dudas on 26/07/2011.
//  Copyright: Do whatever you want with this, i.e. Public Domain
//

#import "NSString+Hashes.h"
#import "NSData+Hashes_Internal.h"

@implementation NSString (Hashes)

- (NSString *)md5
{
    return NSStringCCHashFunction(CC_MD5, CC_MD5_DIGEST_LENGTH, [self dataUsingEncoding:NSUTF8StringEncoding]);
}

- (NSString *)sha1
{
    return NSStringCCHashFunction(CC_SHA1, CC_SHA1_DIGEST_LENGTH, [self dataUsingEncoding:NSUTF8StringEncoding]);
}

- (NSString *)sha224
{
    return NSStringCCHashFunction(CC_SHA224, CC_SHA224_DIGEST_LENGTH, [self dataUsingEncoding:NSUTF8StringEncoding]);
}

- (NSString *)sha256
{
    return NSStringCCHashFunction(CC_SHA256, CC_SHA256_DIGEST_LENGTH, [self dataUsingEncoding:NSUTF8StringEncoding]);
}

- (NSString *)sha384
{
    return NSStringCCHashFunction(CC_SHA384, CC_SHA384_DIGEST_LENGTH, [self dataUsingEncoding:NSUTF8StringEncoding]);
}
- (NSString *)sha512
{
    return NSStringCCHashFunction(CC_SHA512, CC_SHA512_DIGEST_LENGTH, [self dataUsingEncoding:NSUTF8StringEncoding]);
}

@end
