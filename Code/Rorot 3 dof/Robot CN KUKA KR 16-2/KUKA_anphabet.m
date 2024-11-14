function Position = KUKA_anphabet(character,stt,line,scale)

space = 55*(stt-1);

lines = 100*(line-1);
switch character
    case 'A'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,21,70,0,0.5);
        [x3 y3 z3] = Line_draw(21,70,0,29,70,0,0.2);
        [x4 y4 z4] = Line_draw(29,70,0,39.5,35,0,0.3);
        [x5 y5 z5] = Line_draw(39.5,35,0,10.5,35,0,0.3);
        [x6 y6 z6] = Line_draw(10.5,35,0,39.5,35,0,0.3);
        [x7 y7 z7] = Line_draw(39.5,35,0,50,0,0,0.3);
        [x8 y8 z8] = Line_draw(50,0,0,50,0,10,0.2);

        x = [x1 x2 x3 x4 x5 x6 x7 x8 ];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 ];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 ]; 
        
        %plot3(x,y,z,'linewidth',2);
        
    case 'B'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,0,70,0,1);
        [x3 y3 z3] = Line_draw(0,70,0,35,70,0,0.6);
        [x4 y4 z4] = Circle_draw(35,55,15,90,-90,1);
        [x5 y5 z5] = Line_draw(50,55,0,50,50,0,0.2);
        [x6 y6 z6] = Circle_draw(35,50,15,0,-90,1);
        [x7 y7 z7] = Line_draw(35,35,0,0,35,0,0.4);
        [x8 y8 z8] = Line_draw(0,35,0,35,35,0,0.4);
        [x9 y9 z9] = Circle_draw(35,20,15,90,-90,1);
        [x10 y10 z10] = Line_draw(50,20,0,50,15,0,0.3);
        [x11 y11 z11] = Circle_draw(35,15,15,0,-90,1);
        [x12 y12 z12] = Line_draw(35,0,0,0,0,0,0.6);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 ];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9 y10 y11 y12 ];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11 z12 ];       
        
        %plot3(x,y,z,'linewidth',2);          
        
    case 'C'
        [x1 y1 z1] = Line_draw(25,0,10,25,0,0,0.2);
        [x2 y2 z2] = Line_draw(25,0,0,20,0,0,0.1);
        [x3 y3 z3] = Circle_draw(20,20,20,270,-90,1);
        [x4 y4 z4] = Line_draw(0,20,0,0,50,0,0.5);
        [x5 y5 z5] = Circle_draw(20,50,20,180,-90,1);
        [x6 y6 z6] = Line_draw(20,70,0,30,70,0,0.2);
        [x7 y7 z7] = Circle_draw(30,50,20,90,-90,1);
        [x8 y8 z8] = Circle_draw(30,50,20,0,90,1);
        [x9 y9 z9] = Line_draw(30,70,0,20,70,0,0.2);
        [x10 y10 z10] = Circle_draw(20,50,20,90,90,1);
        [x11 y11 z11] = Line_draw(0,50,0,0,20,0,0.5);
        [x12 y12 z12] = Circle_draw(20,20,20,180,90,1);
        [x13 y13 z13] = Line_draw(20,0,0,30,0,0,0.1);
        [x14 y14 z14] = Circle_draw(30,20,20,270,90,1);
        [x15 y15 z15] = Circle_draw(30,20,20,0,-90,1);
        [x16 y16 z16] = Line_draw(30,0,0,25,0,0,0.1);
        [x17 y17 z17] = Line_draw(25,0,0,25,0,10,0.1);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9 y10 y11 y12 y13 y14 y15 y16 y17];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11 z12 z13 z14 z15 z16 z17];       
        
        %plot3(x,y,z,'linewidth',2);   
    case 'D'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,0,70,0,1);
        [x3 y3 z3] = Line_draw(0,70,0,30,70,0,0.6);
        [x4 y4 z4] = Circle_draw(30,50,20,90,-90,1);
        [x5 y5 z5] = Line_draw(50,50,0,50,20,0,0.8);
        [x6 y6 z6] = Circle_draw(30,20,20,0,-90,1);
        [x7 y7 z7] = Line_draw(30,0,0,0,0,0,0.8);
        [x8 y8 z8] = Line_draw(0,0,0,0,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8 ];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 ];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 ];       
        
        %plot3(x,y,z,'linewidth',2);   
        
    case 'E'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,0,70,0,1);
        [x3 y3 z3] = Line_draw(0,70,0,50,70,0,0.8);
        [x4 y4 z4] = Line_draw(50,70,0,0,70,0,0.8);
        [x5 y5 z5] = Line_draw(0,70,0,0,35,0,0.4);
        [x6 y6 z6] = Line_draw(0,35,0,40,35,0,0.6);
        [x7 y7 z7] = Line_draw(40,35,0,0,35,0,0.6);
        [x8 y8 z8] = Line_draw(0,35,0,0,0,0,0.4);
        [x9 y9 z9] = Line_draw(0,0,0,50,0,0,0.8);
        [x10 y10 z10] = Line_draw(50,0,0,50,0,10,0.2);

        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 ];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9 y10 ];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 ];
       
        %plot3(x,y,z,'linewidth',2);
        
    case 'F'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,0,70,0,1);
        [x3 y3 z3] = Line_draw(0,70,0,50,70,0,0.8);
        [x4 y4 z4] = Line_draw(50,70,0,0,70,0,0.8);
        [x5 y5 z5] = Line_draw(0,70,0,0,35,0,0.4);
        [x6 y6 z6] = Line_draw(0,35,0,40,35,0,0.6);
        [x7 y7 z7] = Line_draw(40,35,0,0,35,0,0.6);
        [x8 y8 z8] = Line_draw(0,35,0,0,0,0,0.4);        
        [x9 y9 z9] = Line_draw(0,0,0,0,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9 ];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9 ];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9 ];
       
        %plot3(x,y,z,'linewidth',2);
    case 'G'
        [x1 y1 z1] = Line_draw(25,0,10,25,0,0,0.2);
        [x2 y2 z2] = Line_draw(25,0,0,20,0,0,0.3);
        [x3 y3 z3] = Circle_draw(20,20,20,270,-90,1);
        [x4 y4 z4] = Line_draw(0,20,0,0,50,0,0.8);
        [x5 y5 z5] = Circle_draw(20,50,20,180,-90,1);
        [x6 y6 z6] = Line_draw(20,70,0,30,70,0,0.5);
        [x7 y7 z7] = Circle_draw(30,50,20,90,-90,1);
        [x8 y8 z8] = Circle_draw(30,50,20,0,90,1);
        [x9 y9 z9] = Line_draw(30,70,0,20,70,0,0.5);
        [x10 y10 z10] = Circle_draw(20,50,20,90,90,1);
        [x11 y11 z11] = Line_draw(0,50,0,0,20,0,0.6);
        [x12 y12 z12] = Circle_draw(20,20,20,180,90,1);
        [x13 y13 z13] = Line_draw(20,0,0,30,0,0,0.4);
        [x14 y14 z14] = Circle_draw(30,20,20,270,90,1);
        [x15 y15 z15] = Line_draw(50,20,0,50,30,0,0.3);
        [x16 y16 z16] = Line_draw(50,30,0,35,30,0,0.4);
        [x17 y17 z17] = Line_draw(35,30,0,50,30,0,0.4);
        [x18 y18 z18] = Line_draw(50,30,0,50,20,0,0.3);
        [x19 y19 z19] = Circle_draw(30,20,20,0,-90,1);
        [x20 y20 z20] = Line_draw(30,0,0,25,0,0,0.3);
        [x21 y21 z21] = Line_draw(25,0,0,25,0,10,0.3);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9 y10 y11 y12 y13 y14 y15 y16 y17 y18 y19 y20 y21];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11 z12 z13 z14 z15 z16 z17 z18 z19 z20 z21];     
        
        %plot3(x,y,z,'linewidth',2);
    case 'H'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,0,70,0,0.8);
        [x3 y3 z3] = Line_draw(0,70,0,0,35,0,0.4);
        [x4 y4 z4] = Line_draw(0,35,0,50,35,0,0.5);
        [x5 y5 z5] = Line_draw(50,35,0,50,70,0,0.4);
        [x6 y6 z6] = Line_draw(50,70,0,50,0,0,0.8);
        [x7 y7 z7] = Line_draw(50,0,0,50,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7 ];
        y = [y1 y2 y3 y4 y5 y6 y7 ];
        z = [z1 z2 z3 z4 z5 z6 z7 ];     
        
        %plot3(x,y,z,'linewidth',2);
        
    case 'I'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,0,70,0,1);
        [x3 y3 z3] = Line_draw(0,70,0,0,0,0,1);
        [x4 y4 z4] = Line_draw(0,0,0,0,0,10,0.2);

        x = [x1 x2 x3 x4];
        y = [y1 y2 y3 y4 ];
        z = [z1 z2 z3 z4 ];
       
        %plot3(x,y,z,'linewidth',2);
    case 'J'
        [x1 y1 z1] = Line_draw(15,0,10,15,0,0,0.2);
        [x2 y2 z2] = Circle_draw(15,10,10,270,90,1);
        [x3 y3 z3] = Line_draw(25,10,0,25,70,0,0.8);
        [x4 y4 z4] = Line_draw(25,70,0,0,70,0,0.4);
        [x5 y5 z5] = Line_draw(0,70,0,50,70,0,0.8);
        [x6 y6 z6] = Line_draw(50,70,0,25,70,0,0.4);
        [x7 y7 z7] = Line_draw(25,70,0,25,10,0,0.6);
        [x8 y8 z8] = Circle_draw(15,10,10,0,-180,2);
        [x9 y9 z9] = Circle_draw(15,10,10,180,90,1);
        [x10 y10 z10] = Line_draw(15,0,0,15,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 ];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9 y10 ];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 ];
       
        %plot3(x,y,z,'linewidth',2);
    case 'K'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,0,70,0,0.8);
        [x3 y3 z3] = Line_draw(0,70,0,0,35,0,0.4);
        [x4 y4 z4] = Line_draw(0,35,0,50,70,0,0.4);
        [x5 y5 z5] = Line_draw(50,70,0,0,35,0,0.4);
        [x6 y6 z6] = Line_draw(0,35,0,50,0,0,0.4);
        [x7 y7 z7] = Line_draw(50,0,0,0,35,0,0.4);
        [x8 y8 z8] = Line_draw(0,35,0,0,0,0,0.4);
        [x9 y9 z9] = Line_draw(0,0,0,0,0,10,0.2);

        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9 ];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9 ];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9 ];
       
        %plot3(x,y,z,'linewidth',2);
    case 'L'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,0,70,0,0.8);
        [x3 y3 z3] = Line_draw(0,70,0,0,0,0,0.4);
        [x4 y4 z4] = Line_draw(0,0,0,50,0,0,0.6);
        [x5 y5 z5] = Line_draw(50,0,0,50,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 ];
        y = [y1 y2 y3 y4 y5 ];
        z = [z1 z2 z3 z4 z5 ];
       
        %plot3(x,y,z,'linewidth',2);
    case 'M'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,0,70,0,0.8);
        [x3 y3 z3] = Line_draw(0,70,0,5,70,0,0.3);
        [x4 y4 z4] = Line_draw(5,70,0,25,20,0,0.6);
        [x5 y5 z5] = Line_draw(25,20,0,45,70,0,0.6);
        [x6 y6 z6] = Line_draw(45,70,0,50,70,0,0.3); 
        [x7 y7 z7] = Line_draw(50,70,0,50,0,0,0.8);
        [x8 y8 z8] = Line_draw(50,0,0,50,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8];
        y = [y1 y2 y3 y4 y5 y6 y7 y8];
        z = [z1 z2 z3 z4 z5 z6 z7 z8];
       
        %plot3(x,y,z,'linewidth',2);
    case 'N'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,0,70,0,0.8);
        [x3 y3 z3] = Line_draw(0,70,0,5,70,0,0.3);
        [x4 y4 z4] = Line_draw(5,70,0,45,0,0,0.8);
        [x5 y5 z5] = Line_draw(45,0,0,50,0,0,0.3);
        [x6 y6 z6] = Line_draw(50,0,0,50,70,0,0.8);
        [x7 y7 z7] = Line_draw(50,70,0,50,0,0,0.4);
        [x8 y8 z8] = Line_draw(50,0,0,50,0,10,0.2);

        x = [x1 x2 x3 x4 x5 x6 x7 x8];
        y = [y1 y2 y3 y4 y5 y6 y7 y8];
        z = [z1 z2 z3 z4 z5 z6 z7 z8];
       
        plot3(x,y,z,'linewidth',2);
        
    case 'O'
        [x1 y1 z1] = Line_draw(25,0,10,25,0,0,0.2);
        [x2 y2 z2] = Line_draw(25,0,0,30,0,0,0.3);
        [x3 y3 z3] = Circle_draw(30,20,20,270,90,1);
        [x4 y4 z4] = Line_draw(50,20,0,50,50,0,0.5);
        [x5 y5 z5] = Circle_draw(30,50,20,0,90,1);
        [x6 y6 z6] = Line_draw(30,70,0,20,70,0,0.3);
        [x7 y7 z7] = Circle_draw(20,50,20,90,90,1);
        [x8 y8 z8] = Line_draw(0,50,0,0,20,0,0.3);
        [x9 y9 z9] = Circle_draw(20,20,20,180,90,1);
        [x10 y10 z10] = Line_draw(20,0,0,25,0,0,0.2);
        [x11 y11 z11] = Line_draw(25,0,0,25,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9 y10 y11];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11];
       
        %plot3(x,y,z,'linewidth',2);
    case 'P'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,0,70,0,0.8);
        [x3 y3 z3] = Line_draw(0,70,0,35,70,0,0.4);
        [x4 y4 z4] = Circle_draw(35,55,15,90,-90,1);
        [x5 y5 z5] = Line_draw(50,55,0,50,50,0,0.3);
        [x6 y6 z6] = Circle_draw(35,50,15,0,-90,1);
        [x7 y7 z7] = Line_draw(35,35,0,0,35,0,0.4);
        [x8 y8 z8] = Line_draw(0,35,0,0,0,0,0.4);
        [x9 y9 z9] = Line_draw(0,0,0,0,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9];
       
        plot3(x,y,z,'linewidth',2);
        
    case 'Q'
        [x1 y1 z1] = Line_draw(25,0,10,25,0,0,0.2);
        [x2 y2 z2] = Line_draw(25,0,0,20,0,0,0.3);
        [x3 y3 z3] = Circle_draw(20,20,20,270,-90,1);
        [x4 y4 z4] = Line_draw(0,20,0,0,50,0,0.5);
        [x5 y5 z5] = Circle_draw(20,50,20,180,-90,1);
        [x6 y6 z6] = Line_draw(20,70,0,30,70,0,0.3);
        [x7 y7 z7] = Circle_draw(30,50,20,90,-90,1);
        [x8 y8 z8] = Line_draw(50,50,0,50,20,0,0.3);
        [x9 y9 z9] = Circle_draw(30,20,20,0,-45,1);
        [x10 y10 z10] = Line_draw(30+10*sqrt(2),20-sqrt(20^2-(10*sqrt(2))^2),0,50,0,0,0.4);
        [x11 y11 z11] = Line_draw(50,0,0,40,10,0,0.5);
        [x12 y12 z12] = Line_draw(40,10,0,30+10*sqrt(2),20-sqrt(20^2-(10*sqrt(2))^2),0,0.4);
        [x13 y13 z13] = Circle_draw(30,20,20,315,-45,1);
        [x14 y14 z14] = Line_draw(30,0,0,25,0,0,0.3);
        [x15 y15 z15] = Line_draw(25,0,0,25,0,10,0.2);

        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9 y10 y11 y12 y13 y14 y15];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11 z12 z13 z14 z15];     
        
        plot3(x,y,z,'linewidth',2);
    case 'R'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,0,70,0,0.8);
        [x3 y3 z3] = Line_draw(0,70,0,35,70,0,0.4);
        [x4 y4 z4] = Circle_draw(35,55,15,90,-90,1);
        [x5 y5 z5] = Line_draw(50,55,0,50,50,0,0.3);
        [x6 y6 z6] = Circle_draw(35,50,15,0,-90,1);
        [x7 y7 z7] = Line_draw(35,35,0,0,35,0,0.4);  
        [x8 y8 z8] = Line_draw(0,35,0,50,0,0,0.5);
        [x9 y9 z9] = Line_draw(50,0,0,50,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9];     
        
        %plot3(x,y,z,'linewidth',2);
    case 'S'
        [x1 y1 z1] = Line_draw(25,0,10,25,0,0,0.2);
        [x2 y2 z2] = Line_draw(25,0,0,35,0,0,0.2);
        [x3 y3 z3] = Circle_draw(35,15,15,270,150,1.5);
        [x4 y4 z4] = Line_draw(42.5,15*(1+sind(60)),0,7.5,70-15*(1+sind(60)),0,0.3);
        [x5 y5 z5] = Circle_draw(15,55,15,240,-150,1);
        [x6 y6 z6] = Line_draw(15,70,0,30,70,0,0.5);
        [x7 y7 z7] = Circle_draw(30,50,20,90,-90,1.5);
        [x8 y8 z8] = Circle_draw(30,50,20,0,90,1.5);
        [x9 y9 z9] = Line_draw(30,70,0,15,70,0,0.5);
        [x10 y10 z10] = Circle_draw(15,55,15,90,150,1);
        [x11 y11 z11] = Line_draw(7.5,70-15*(1+sind(60)),0,42.5,15*(1+sind(60)),0,0.3);
        [x12 y12 z12] = Circle_draw(35,15,15,60,-150,1.5);
        [x13 y13 z13] = Line_draw(35,0,0,20,0,0,0.2);
        [x14 y14 z14] = Circle_draw(20,20,20,270,-90,1.5);
        [x15 y15 z15] = Circle_draw(20,20,20,180,90,1.5);
        [x16 y16 z16] = Line_draw(20,0,0,25,0,0,0.2);
        [x17 y17 z17] = Line_draw(25,0,0,25,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9 y10 y11 y12 y13 y14 y15 y16 y17];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11 z12 z13 z14 z15 z16 z17];     
        
      %  plot3(x,y,z,'linewidth',2);
  
    case 'T'
        [x1 y1 z1] = Line_draw(25,0,10,25,0,0,0.2);
        [x2 y2 z2] = Line_draw(25,0,0,25,70,0,0.5);
        [x3 y3 z3] = Line_draw(25,70,0,50,70,0,0.5);
        [x4 y4 z4] = Line_draw(50,70,0,0,70,0,0.5);
        [x5 y5 z5] = Line_draw(0,70,0,25,70,0,0.5);
        [x6 y6 z6] = Line_draw(25,70,0,25,0,0,0.2);
        [x7 y7 z7] = Line_draw(25,0,0,25,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7];
        y = [y1 y2 y3 y4 y5 y6 y7];
        z = [z1 z2 z3 z4 z5 z6 z7];
        
        plot3(x,y,z,'linewidth',2);     
    case 'U'
        [x1 y1 z1] = Line_draw(25,0,10,25,0,0,0.2);
        [x2 y2 z2] = Line_draw(25,0,0,30,0,0,0.4);
        [x3 y3 z3] = Circle_draw(30,20,20,270,90,1);
        [x4 y4 z4] = Line_draw(50,20,0,50,70,0,0.8);
        [x5 y5 z5] = Line_draw(50,70,0,50,20,0,0.4);
        [x6 y6 z6] = Circle_draw(30,20,20,0,-90,1);
        [x7 y7 z7] = Line_draw(30,0,0,20,0,0,0.4);
        [x8 y8 z8] = Circle_draw(20,20,20,270,-90,1);
        [x9 y9 z9] = Line_draw(0,20,0,0,70,0,0.8);
        [x10 y10 z10] = Line_draw(0,70,0,0,20,0,0.4);
        [x11 y11 z11] = Circle_draw(20,20,20,180,90,1);
        [x12 y12 z12] = Line_draw(20,0,0,25,0,0,0.3);
        [x13 y13 z13] = Line_draw(25,0,0,25,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13];
        y = [y1 y2 y3 y4 y5 y6 y7 y8 y9 y10 y11 y12 y13];
        z = [z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11 z12 z13];     
        
      % plot3(x,y,z,'linewidth',2);
    case 'V'
        [x1 y1 z1] = Line_draw(25,0,10,25,0,0,0.2);
        [x2 y2 z2] = Line_draw(25,0,0,0,70,0,1);
        [x3 y3 z3] = Line_draw(0,70,0,25,0,0,0.4);
        [x4 y4 z4] = Line_draw(25,0,0,50,70,0,1);
        [x5 y5 z5] = Line_draw(50,70,0,25,0,0,0.4);
        [x6 y6 z6] = Line_draw(25,0,0,25,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6];
        y = [y1 y2 y3 y4 y5 y6];
        z = [z1 z2 z3 z4 z5 z6];     
        
        %plot3(x,y,z,'linewidth',2);
        
    case 'W'
        [x1 y1 z1] = Line_draw(15,0,10,15,0,0,0.2);
        [x2 y2 z2] = Line_draw(15,0,0,0,70,0,0.8);
        [x3 y3 z3] = Line_draw(0,70,0,15,0,0,0.4);
        [x4 y4 z4] = Line_draw(15,0,0,25,60,0,0.6);
        [x5 y5 z5] = Line_draw(25,60,0,35,0,0,0.6);
        [x6 y6 z6] = Line_draw(35,0,0,50,70,0,0.8);
        [x7 y7 z7] = Line_draw(50,70,0,35,0,0,0.4);
        [x8 y8 z8] = Line_draw(35,0,0,35,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8];
        y = [y1 y2 y3 y4 y5 y6 y7 y8];
        z = [z1 z2 z3 z4 z5 z6 z7 z8];     
        
        %plot3(x,y,z,'linewidth',2);   
    case 'X'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,50,70,0,1);
        [x3 y3 z3] = Line_draw(50,70,0,25,35,0,0.3);
        [x4 y4 z4] = Line_draw(25,35,0,0,70,0,0.6);
        [x5 y5 z5] = Line_draw(0,70,0,50,0,0,1);
        [x6 y6 z6] = Line_draw(50,0,0,50,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6];
        y = [y1 y2 y3 y4 y5 y6];
        z = [z1 z2 z3 z4 z5 z6];     
        
        %plot3(x,y,z,'linewidth',2); 
    case 'Y'
        [x1 y1 z1] = Line_draw(25,0,10,25,0,0,0.2);
        [x2 y2 z2] = Line_draw(25,0,0,25,40,0,0.4);
        [x3 y3 z3] = Line_draw(25,40,0,0,70,0,0.4);
        [x4 y4 z4] = Line_draw(0,70,0,25,40,0,0.2);
        [x5 y5 z5] = Line_draw(25,40,0,50,70,0,0.4);
        [x6 y6 z6] = Line_draw(50,70,0,25,40,0,0.2);
        [x7 y7 z7] = Line_draw(25,40,0,25,0,0,0.4);
        [x8 y8 z8] = Line_draw(25,0,0,25,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7 x8];
        y = [y1 y2 y3 y4 y5 y6 y7 y8];
        z = [z1 z2 z3 z4 z5 z6 z7 z8];     
        
        plot3(x,y,z,'linewidth',2); 
        
    case 'Z'
        [x1 y1 z1] = Line_draw(0,0,10,0,0,0,0.2);
        [x2 y2 z2] = Line_draw(0,0,0,50,70,0,1);
        [x3 y3 z3] = Line_draw(50,70,0,0,70,0,0.8);
        [x4 y4 z4] = Line_draw(0,70,0,50,70,0,0.4);
        [x5 y5 z5] = Line_draw(50,70,0,0,0,0,0.4);
        [x6 y6 z6] = Line_draw(0,0,0,50,0,0,0.8);
        [x7 y7 z7] = Line_draw(50,0,0,50,0,10,0.2);
        
        x = [x1 x2 x3 x4 x5 x6 x7];
        y = [y1 y2 y3 y4 y5 y6 y7];
        z = [z1 z2 z3 z4 z5 z6 z7];     
        
        %plot3(x,y,z,'linewidth',2); 
    case ' '
        [x1 y1 z1] = Line_draw(0,0,10,20,0,10,0.4);
        x = x1;
        y = y1;
        z = z1;
        
        plot3(x,y,z,'linewidth',2); 
   otherwise
       disp('Loi'); 
end

x = x.*scale+space;
y = y.*scale+lines;
z = z.*scale;
for i = 1:length(x);
    w(i)=1;
end
Position =[x;y;z;w];
end