//
//  ViewController.h
//  LEXCODEplayerDemo
//
//  Created by David de la Puente on 17/12/13.
//  Copyright (c) 2013 David de la Puente. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface ViewController : UIViewController <AVAudioPlayerDelegate>

- (IBAction)playPause:(id)sender;
- (IBAction)stopAudio:(id)sender;
- (IBAction)ajustarVolumen:(id)sender;
- (IBAction)sliderProgresoCambioPosicion:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *playPauseBotonLabel;
@property (weak, nonatomic) IBOutlet UISlider *progresoSlider;
@property (weak, nonatomic) IBOutlet UISlider *volumenSlider;
@property (weak, nonatomic) IBOutlet UILabel *tiempoActualLabel;
@property (weak, nonatomic) IBOutlet UILabel *duracionLabel;

@property (strong, nonatomic) AVAudioPlayer *audioPlayer;
@property (strong, nonatomic) NSTimer *sliderTimer;

-(NSString *) stringFromInterval:(NSTimeInterval)interval;
-(void) updateSlider;

@end
