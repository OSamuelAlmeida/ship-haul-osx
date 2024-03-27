//
//  RendererWrapper.m
//  ShipHaulOSX
//
//  Created by Samuel Almeida on 27/03/24.
//

#import "RendererWrapper.hpp"

#include "Renderer.h"
#include "HtmlParser.h"

#import <Foundation/Foundation.h>


@implementation RendererWrapper

- (void)renderHTML:(NSString *)html inContext:(CGContextRef)context {
    std::string htmlString = [html UTF8String];
    
    HtmlParser parser;
    std::string parsedText = parser.parse(htmlString);
    
    Renderer renderer;
    renderer.drawText(context, parsedText, 0, 0); // Example x, y coordinates
}

@end
