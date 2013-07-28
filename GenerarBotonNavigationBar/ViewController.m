//
//  ViewController.m
//  GenerarBotonNavigationBar
//
//  Created by LLBER on 28/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize vista;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    vista = [CALayer layer];
    vista.bounds = CGRectMake(0, 0, 1536, 2048); // Medidas para abarcar hasta iPad Retina
    vista.position = CGPointMake(0, 0);
    
    [self.view.layer addSublayer:vista];

    
    // Crear Boton Izquierdo en el NavigationBar
    UIBarButtonItem *botonIzq = [[UIBarButtonItem alloc] initWithTitle:@"Boton Izquierda"
                                                                 style:UIBarButtonItemStylePlain
                                                                target:self
                                                                action:@selector(rojoBackGround:)];
    self.navigationItem.leftBarButtonItem = botonIzq;
    
    // Crear Boton Derecho en el NavigationBar
    UIBarButtonItem *botonDer = [[UIBarButtonItem alloc] initWithTitle:@"Boton Derecha"
                                                                 style:UIBarButtonItemStylePlain
                                                                target:self
                                                                action:@selector(verdeBackGround:)];
    self.navigationItem.rightBarButtonItem = botonDer;
}

- (void)rojoBackGround:(id)sender {
    
    vista.backgroundColor = [UIColor redColor].CGColor;
}

- (void)verdeBackGround:(id)sender {
    
    vista.backgroundColor = [UIColor greenColor].CGColor;
}



@end
