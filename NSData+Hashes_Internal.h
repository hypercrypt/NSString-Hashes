//
//  NSData+Hashes_Internal.h
//
//  Created by anivaros on 24.02.2020.
//  Copyright: Do whatever you want with this, i.e. Public Domain
//

#import <CommonCrypto/CommonDigest.h>
#import <Foundation/Foundation.h>


// MARK - Private

static inline uint8_t * NSDataInternalCCHashFunction(unsigned char *(function)(const void *data, CC_LONG len, unsigned char *md), CC_LONG digestLength, NSData *data)
{
    uint8_t *digest = malloc(digestLength);
    function(data.bytes, (CC_LONG)data.length, digest);
    return digest;
}

// MARK - Internal

static inline NSData *NSDataCCHashFunction(unsigned char *(function)(const void *function, CC_LONG len, unsigned char *md), CC_LONG digestLength, NSData *data)
{
    uint8_t *digest = NSDataInternalCCHashFunction(function, digestLength, data);
    NSData *hashData = [NSData dataWithBytes:digest length:digestLength];
    free(digest);
    return hashData;
}

static inline NSString *NSStringCCHashFunction(unsigned char *(function)(const void *data, CC_LONG len, unsigned char *md), CC_LONG digestLength, NSData *data)
{
    uint8_t *digest = NSDataInternalCCHashFunction(function, digestLength, data);
    
    NSMutableString *output = [NSMutableString stringWithCapacity:digestLength * 2];
    
    for (int i = 0; i < digestLength; i++)
    {
        [output appendFormat:@"%02x", digest[i]];
    }
    free(digest);
    return output;
}
