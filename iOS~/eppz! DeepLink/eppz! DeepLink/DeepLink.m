//
// Copyright (c) 2018 eppz! mobile, Gergely Borbás (SP)
//
// http://www.twitter.com/_eppz
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
// INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
// PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
// CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
// OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "DeepLink.h"


__strong DeepLink *_EPPZ_DeepLink_instance;


@implementation DeepLink


+(void)load
{
    NSLog(@"[DeepLink load]");
    _EPPZ_DeepLink_instance = [DeepLink new];
}

+(DeepLink*)instance
{ return _EPPZ_DeepLink_instance; }

-(instancetype)init
{
    self = [super init];
    if (self) [self reset];
    return self;
}

-(void)reset
{
    self.URL = [NSString new];
    self.sourceAppliaction = [NSString new];
    self.annotation = [NSDictionary new];
}

@end
