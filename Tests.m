//
//  NSData+Hashes.m
//
//  Created by anivaros on 24.02.2020.
//  Copyright: Do whatever you want with this, i.e. Public Domain
//

@import XCTest;
@import NSString_Hashes;

@interface Tests : XCTestCase
@end

@implementation Tests

- (void)testStringMd5
{
    NSString *testString = @"test";

    NSString *hashOfTestString = @"098f6bcd4621d373cade4e832627b4f6";

    XCTAssertEqualObjects(testString.md5, hashOfTestString);
}

- (void)testStringSha1
{
    NSString *testString = @"test";

    NSString *hashOfTestString = @"a94a8fe5ccb19ba61c4c0873d391e987982fbbd3";

    XCTAssertEqualObjects(testString.sha1, hashOfTestString);
}

- (void)testStringSha256
{
    NSString *testString = @"test";

    NSString *hashOfTestString = @"9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08";

    XCTAssertEqualObjects(testString.sha256, hashOfTestString);
}
NSString *testString = @"test";

- (void)testDataMd5
{
    NSString *testString = @"test";
    XCTAssertEqualObjects([testString dataUsingEncoding:NSUTF8StringEncoding].md5, @"098f6bcd4621d373cade4e832627b4f6");
}

- (void)testDataMd5Data
{
    NSString *testString = @"test";

    char hexHashOfTestString[] = {0x09, 0x8f, 0x6b, 0xcd, 0x46, 0x21, 0xd3, 0x73, 0xca, 0xde, 0x4e, 0x83, 0x26, 0x27, 0xb4, 0xf6};

    XCTAssertEqualObjects([testString dataUsingEncoding:NSUTF8StringEncoding].md5Data, [NSData dataWithBytes:hexHashOfTestString length:16]);
}

@end
