//
//  ViewController.m
//  LEXCODEplayerDemo
//
//  Created by David de la Puente on 17/12/13.
//  Copyright (c) 2013 David de la Puente. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"simon" ofType:@"mp3"]];
    
    NSError *error;
    
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
    if(error){
        NSLog(@"ERROR: %@", error.localizedDescription);
    }else{
    
        self.audioPlayer.delegate = self;
        self.progresoSlider.value = 0.0;
        self.volumenSlider.value = 0.5;
        self.duracionLabel.text = [self stringFromInterval:self.audioPlayer.duration];
        
        if (self.audioPlayer.duration <= 3600) {
            self.tiempoActualLabel.text = [NSString stringWithFormat:@"00:00"];
        }else{
            self.tiempoActualLabel.text = [NSString stringWithFormat:@"0:00:00"];

        }
        
        [self.tiempoActualLabel sizeToFit];
        [self.audioPlayer prepareToPlay];
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSString *) stringFromInterval:(NSTimeInterval)interval{
    
    NSInteger tiempo = (NSInteger)interval;
    int segundos = tiempo % 60;
    int minutos = (tiempo /60) % 60;
    int horas = (tiempo / 3600);
    
    if (tiempo <= 3600) {
        return [NSString stringWithFormat:@"%02d:%02d", minutos, segundos];
    }
    
    return [NSString stringWithFormat:@"%d:%02d:%02d",horas, minutos, segundos];

}

-(void) updateSlider{
    self.progresoSlider.value = self.audioPlayer.currentTime;
    self.tiempoActualLabel.text = [self stringFromInterval:self.audioPlayer.currentTime];

}

- (IBAction)playPause:(id)sender {
    if (!self.audioPlayer.playing) {
        self.progresoSlider.maximumValue = self.audioPlayer.duration;
        
        self.sliderTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 //el valor maximo es 1
                                                            target:self
                                                          selector:@selector(updateSlider) //si cambia el slider llamamos a este método
                                                          userInfo:nil
                                                           repeats:YES];
        
        [self.progresoSlider addTarget:self
                                action:@selector(sliderProgresoCambioPosicion:) //llamamos al metodo cuando se mueva el slider
                      forControlEvents:UIControlEventValueChanged];
        
        [self.audioPlayer play];
        
        [self.playPauseBotonLabel setTitle:@"Pause" forState:UIControlStateNormal];
   
    }else if(self.audioPlayer.playing){
        
        [self.audioPlayer pause];
        [self.playPauseBotonLabel setTitle:@"Play" forState:UIControlStateNormal];
    }
}

- (IBAction)stopAudio:(id)sender {
    if (self.audioPlayer.isPlaying) {
        [self.audioPlayer stop];
    }
    
    [self.audioPlayer setCurrentTime:0.0];
    [self.sliderTimer invalidate];
    self.progresoSlider.value = 0.0;
    
    if (self.audioPlayer.duration <= 3600) {
        self.tiempoActualLabel.text = [NSString stringWithFormat:@"00:00"];
    }else{
        self.tiempoActualLabel.text = [NSString stringWithFormat:@"0:00:00"];
        
    }
    
    [self.tiempoActualLabel sizeToFit];
    [self.playPauseBotonLabel setTitle:@"Play" forState:UIControlStateNormal];
    
}

- (IBAction)ajustarVolumen:(id)sender {
    
    if (self.audioPlayer != nil) {
        self.audioPlayer.volume = self.volumenSlider.value;
    }
}

- (IBAction)sliderProgresoCambioPosicion:(id)sender {
    
    [self.audioPlayer stop];
    
    [self.audioPlayer setCurrentTime:self.progresoSlider.value];
    [self.audioPlayer prepareToPlay];
    [self.audioPlayer play];
}

#pragma mark - delegados

-(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
    if (flag) {
        [self stopAudio:nil];
    }
}

-(void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error{
    NSLog(@"ERROR: %@", error.localizedDescription);
}

-(void)audioPlayerEndInterruption:(AVAudioPlayer *)player withOptions:(NSUInteger)flags{
    if (flags == AVAudioSessionInterruptionOptionShouldResume && self.audioPlayer != nil) {
        [self.audioPlayer play];
    }

}
@end
