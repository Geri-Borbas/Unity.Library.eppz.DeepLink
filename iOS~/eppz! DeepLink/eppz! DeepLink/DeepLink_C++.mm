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

#import "UnityString_C++.mm"
#import "DeepLink.h"


extern "C"
{
    

    void EPPZ_DeepLink_Reset()
    { return [[DeepLink instance] reset]; }
    
    const char* EPPZ_DeepLink_GetURL()
    { return EPPZ_DeepLink_UnityStringFromNSString([[DeepLink instance] URL]); }
    
    const char* EPPZ_DeepLink_GetSourceApplication()
    { return EPPZ_DeepLink_UnityStringFromNSString([[DeepLink instance] sourceAppliaction]); }
    
    
}

