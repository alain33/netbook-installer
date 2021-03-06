//
//  kext.m
//  NetbookInstaller
//
//  Created by Evan Lojewski on 12/25/09.
//  Copyright 2009. All rights reserved.
//

#import "Kext.h"


@implementation Kext


- (Kext*) initWithKextPath: (NSString*) path;
{
	kextDictionary = [[NSDictionary alloc] initWithContentsOfFile:path];
	
	if(!kextDictionary) return nil;
	return self;
}

/*- (UInt8)kextFlags
{
	return kextFlags;
}
*/
- (BOOL) is32bitCapable
{
	return kextFlags & kext32bit;
}

- (BOOL) is64bitCapable
{
	return kextFlags & kext64bit;
}


@end
