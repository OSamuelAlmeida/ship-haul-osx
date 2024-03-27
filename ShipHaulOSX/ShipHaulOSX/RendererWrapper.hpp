//
//  Renderer.h
//  ShipHaulOSX
//
//  Created by Samuel Almeida on 27/03/24.
//

#ifndef Renderer_h
#define Renderer_h

#import <CoreGraphics/CoreGraphics.h>

@interface RendererWrapper: NSObject

- (void)renderHTML:(NSString *)html inContext:(CGContextRef)context;

@end


#endif /* Renderer_h */
