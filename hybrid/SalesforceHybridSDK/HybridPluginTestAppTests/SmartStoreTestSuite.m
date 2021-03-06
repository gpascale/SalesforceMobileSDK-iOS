/*
 Copyright (c) 2012, salesforce.com, inc. All rights reserved.
 Author: Todd Stellanova
 
 Redistribution and use of this software in source and binary forms, with or without modification,
 are permitted provided that the following conditions are met:
 * Redistributions of source code must retain the above copyright notice, this list of conditions
 and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list of
 conditions and the following disclaimer in the documentation and/or other materials provided
 with the distribution.
 * Neither the name of salesforce.com, inc. nor the names of its contributors may be used to
 endorse or promote products derived from this software without specific prior written
 permission of salesforce.com, inc.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
 IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY
 WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import <UIKit/UIKit.h>

#import "SmartStoreTestSuite.h"

#import "AppDelegate.h"
#import "SFTestRunnerPlugin.h"
#import "SFSmartStore.h"
#import "SFSmartStorePlugin.h"
#import "SFHybridViewController.h"
#import "CDVCommandDelegateImpl.h"



@implementation SmartStoreTestSuite


- (void)setUp
{
    [super setUp];
    self.jsSuiteName = @"SmartStoreTestSuite";

    if ([self isTestRunnerReady]) {
        [SFSmartStore removeSharedStoreWithName:kDefaultSmartStoreName];
        AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
        SFSmartStorePlugin *pluginInstance = [appDelegate.viewController.commandDelegate getCommandInstance:kSmartStorePluginIdentifier];
        [pluginInstance resetSharedStore];
    }
    
}

- (void)tearDown
{
    [SFSmartStore removeSharedStoreWithName:kDefaultSmartStoreName];
    
    [super tearDown];
}



- (void)testRegisterRemoveSoup {
    [self runTest:@"testRegisterRemoveSoup"];
}

- (void)testRemoveFromSoup {
    [self runTest:@"testRemoveFromSoup"];
}

- (void)testUpsertSoupEntries {
    [self runTest:@"testUpsertSoupEntries"];
}

- (void)testUpsertSoupEntriesWithExternalId {
    [self runTest:@"testUpsertSoupEntriesWithExternalId"];
}

- (void)testRetrieveSoupEntries {
    [self runTest:@"testRetrieveSoupEntries"];
}

- (void)testQuerySoup {
    [self runTest:@"testQuerySoup"];
}

- (void)testQuerySoupDescending {
    [self runTest:@"testQuerySoupDescending"];
}

- (void)testManipulateCursor {
    [self runTest:@"testManipulateCursor"];
}

- (void)testRegisterBogusSoup {
    [self runTest:@"testRegisterBogusSoup"];
}

- (void)testRegisterSoupNoIndices {
    [self runTest:@"testRegisterSoupNoIndices"];
}

- (void)testUpsertToNonexistentSoup {
    [self runTest:@"testUpsertToNonexistentSoup"];
}

- (void)testQuerySoupBadQuerySpec {
    [self runTest:@"testQuerySoupBadQuerySpec"];
}

- (void)testQuerySoupEndKeyNoBeginKey {
    [self runTest:@"testQuerySoupEndKeyNoBeginKey"];
}

- (void)testQuerySoupBeginKeyNoEndKey {
    [self runTest:@"testQuerySoupBeginKeyNoEndKey"];
}

- (void)testArbitrarySoupNames {
    [self runTest:@"testArbitrarySoupNames"];
}


- (void)testQuerySpecFactories {
    [self runTest:@"testQuerySpecFactories"];
}

- (void)testLikeQuerySpecStartsWith {
    [self runTest:@"testLikeQuerySpecStartsWith"];
}

- (void)testLikeQuerySpecEndsWith {
    [self runTest:@"testLikeQuerySpecEndsWith"];
}

- (void)testLikeQueryInnerText {
    [self runTest:@"testLikeQueryInnerText"];
}

- (void)testCompoundQueryPath {
    [self runTest:@"testCompoundQueryPath"];
}

- (void)testEmptyQuerySpec {
    [self runTest:@"testEmptyQuerySpec"];
}

- (void)testIntegerQuerySpec {
    [self runTest:@"testIntegerQuerySpec"];
}

- (void)testSmartQueryWithCount {
    [self runTest:@"testSmartQueryWithCount"];
}

- (void)testSmartQueryWithSpecialFields {
    [self runTest:@"testSmartQueryWithSpecialFields"];
}


@end
