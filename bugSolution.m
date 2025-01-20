To fix this, the caller must explicitly retain the returned object using `strong` property or `copy` if appropriate.  If the object is only needed temporarily within a scope, using `__autoreleasing` in method's parameter or return type  can prevent unnecessary retain cycles. Here's how to correct the code:

```objectivec
// Corrected version
@interface MyClass : NSObject
- (MyObject *)createObject;
@end

@implementation MyClass
- (MyObject *)createObject {
    MyObject *obj = [[MyObject alloc] init];
    // ... object initialization ...
    return obj; // Caller must retain the object 
}
@end

// In the calling method
MyClass *myClass = [[MyClass alloc] init];
MyObject *myObject = [myClass createObject];
[myObject doSomething]; // Use myObject before it's released. 

// ... (Later, release myObject when no longer needed) ...
[myObject release];
```
By ensuring proper retention and release of objects, the premature deallocation issue can be avoided.