package Flaschenzug_V3
  connector Port1
    Real s;
    //Weg
    flow Real F;
    //Kraft
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon(lineColor = {0, 170, 0}, fillColor = {0, 170, 0}, fillPattern = FillPattern.Solid, points = {{0, 100}, {-100, -100}, {100, -100}, {0, 100}, {0, 100}})}));
  end Port1;

  connector Port2
  
    Real s;           //Weg
    flow Real F;          //Kraft
    annotation(
      Diagram,
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon(lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-100, 100}, {100, 100}, {0, -100}, {0, -100}, {-100, 100}})}));
  end Port2;

  connector Port_Rolle_Seilanschluss
  
    Real s;         //Weg
    flow Real F;    
//Kraft
    annotation(
      Diagram,
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon(lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-100, 40}, {0, 100}, {100, 40}, {100, 40}, {-100, 40}}), Polygon(origin = {-40, -70}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-60, 30}, {40, -30}, {140, 30}, {140, 30}, {-60, 30}}), Rectangle(origin = {-10, 0}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-90, 40}, {110, -40}})}));
  end Port_Rolle_Seilanschluss;

  model Fixpoint
  
  Flaschenzug_V3.Port2 portFix annotation(
      Placement(visible = true, transformation(origin = {0, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  equation

  portFix.s =0;
  
  annotation(
      Icon(graphics = {Rectangle(origin = {2, 26}, fillPattern = FillPattern.Solid, extent = {{-76, 18}, {76, -18}})}));end Fixpoint;

  model Motor
    //////////////////////////////////////////////////
constant Real g = 10; 
  constant Real pi = Modelica.Constants.pi;
  
//Erdbeschleunigung
  
    Real F_z "Motorkraft";
    Modelica.SIunits.Acceleration a;                 //Beschleunigung
    Modelica.SIunits.Velocity v;                     //Geschwindigkeit
    Real s_Motor = Port_Motor.s;
    
       parameter Modelica.SIunits.Frequency n = 50 ; //Drehzahl in Hertz
      parameter Modelica.SIunits.Voltage U = 230;    //Spannung in Volt
      
      Modelica.SIunits.Length r= 0.01;                //Radius Motorwelle in m
      Modelica.SIunits.Torque M_L;                   //Lastmoment
      Modelica.SIunits.Power P;                      //elektrische Leistung in Watt
  
      Modelica.SIunits.Current I;                    //Strom in Ampere
     
      
  /////////////////////////////////////////////////
  Flaschenzug_V3.Port2 Port_Motor annotation(
      Placement(visible = true, transformation(origin = {2, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -46}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  /////////////////////////////////////////////////
    
    equation
    
    Port_Motor.F = F_z;
    Port_Motor.s = sin(time);
    der(v) = a;
    der(Port_Motor.s) = v;
    M_L = F_z * r;
    P = M_L * 2 * pi * n;
    P = U*I;
    
////////////////////////////////////////////////
  annotation(
      Icon(graphics = {Ellipse(origin = {0, 22}, lineColor = {0, 0, 255}, lineThickness = 1, extent = {{-60, 60}, {60, -60}}, endAngle = 360), Text(origin = {-1, 23}, lineColor = {0, 0, 255}, extent = {{39, 35}, {-39, -35}}, textString = "M")}));
  
  end Motor;

  model Rollensystem
  
  parameter Real n = 4;
  ////////////////////////////////////////////////////////
    Flaschenzug_V3.Port1 Port_Zug annotation(
      Placement(visible = true, transformation(origin = {0, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port2 Port_Last annotation(
      Placement(visible = true, transformation(origin = {0, -86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ////////////////////////////////////////////////////////
  equation
  
    Port_Zug.F = Port_Last.F / n;
    Port_Last.s = Port_Zug.s / n;
    
    
    
    annotation(
      Icon(graphics = {Ellipse(fillColor = {255, 85, 0}, fillPattern = FillPattern.Solid, extent = {{-80, 80}, {80, -80}}, endAngle = 360), Text(origin = {2, 4}, extent = {{-56, 38}, {56, -38}}, textString = "Rollensystem")}, coordinateSystem(initialScale = 0.1)));
  
  
  end Rollensystem;

  model Rolle
  /*
    Flaschenzug_V3.Port1 Port_Zug annotation(
      Placement(visible = true, transformation(origin = {0, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port2 Port_Last annotation(
  Placement(visible = true, transformation(origin = {0, -86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  parameter Real m = 1;
  constant Real g = 9.81;
  ///////////////////////////////////////////////////////////////////////////////////////////7
  Flaschenzug_V3.Port_Rolle_Seilanschluss port_Rolle_Seilanschluss_links annotation(
  Placement(visible = true, transformation(origin = {-86, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Flaschenzug_V3.Port_Rolle_Seilanschluss port_Rolle_Seilanschluss_rechts annotation(
  Placement(visible = true, transformation(origin = {86, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ////////////////////////////////////////////////////////////////////////////////////////////
  
  equation
//Port_Zug.F = Port_Last.F / n;
  Port_Last.s = Port_Zug.s;
  Port_Zug.F = port_Rolle_Seilanschluss_links.F + port_Rolle_Seilanschluss_rechts.F + Port_Last.F + m * g;
  port_Rolle_Seilanschluss_rechts.s = port_Rolle_Seilanschluss_links.s
  
  
  
  annotation(
      Icon(graphics = {Ellipse(origin = {18, -4}, extent = {{-98, 84}, {62, -76}}, endAngle = 360)}));
    
    
      annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Ellipse(origin = {4, 3}, extent = {{-84, 77}, {76, -83}}, endAngle = 360)}));
   */
      end Rolle;

  model Masse
  
    constant Real g = 9.81;               //Erdbeschleunigung
    parameter Real m = 5           "Masse";
    Real s_masse                  "Höhe Masse";
    Real F_g;
    Real F_t;
    Real F_ges = PortMasse.F;
    Modelica.SIunits.Acceleration a;
            //Beschleunigung
    Modelica.SIunits.Velocity v;              //Geschwindigkeit
    Flaschenzug_V3.Port1 PortMasse annotation(
      Placement(visible = true, transformation(origin = {0, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    F_g = -m * g;

  
  
    PortMasse.F = -(F_g + F_t);
    PortMasse.s = s_masse;
    der(v) = a;
    der(s_masse) = v;

  
  
    if a > 0 then
      F_t = -m * a;
    else
      F_t = 0;
      
    end if 
    annotation(
      Icon(graphics = {Polygon(origin = {0, -20}, fillColor = {154, 154, 154}, fillPattern = FillPattern.Solid, points = {{-40, 40}, {40, 40}, {60, -40}, {-60, -40}, {-40, 40}}), Text(origin = {1, -16}, extent = {{-29, 22}, {29, -22}}, textString = "m")}, coordinateSystem(initialScale = 0.1)));
    annotation(
      Icon(graphics = {Polygon(origin = {0, -20}, fillColor = {154, 154, 154}, fillPattern = FillPattern.Solid, points = {{-40, 40}, {40, 40}, {60, -40}, {-60, -40}, {-40, 40}}), Text(origin = {1, -16}, extent = {{-29, 22}, {29, -22}}, textString = "m")}, coordinateSystem(initialScale = 0.1)));
  
  end Masse;

 model Flaschenzugsystem
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {0, -75}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
    Flaschenzug_V3.Motor motor1 annotation(
      Placement(visible = true, transformation(origin = {0, 69}, extent = {{-33, -33}, {33, 33}}, rotation = 0)));
    Flaschenzug_V3.Rollensystem rollensystem1(n = 1)  annotation(
      Placement(visible = true, transformation(origin = {0, -1}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  equation
    connect(rollensystem1.Port_Last, masse1.PortMasse) annotation(
      Line(points = {{0, -20}, {0, -68}}, color = {255, 0, 0}));
    connect(rollensystem1.Port_Zug, motor1.Port_Motor) annotation(
      Line(points = {{0, 18}, {0, 54}}, color = {0, 170, 0}));
    annotation(
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02));
  end Flaschenzugsystem;

  model Rolle_oben
    Flaschenzug_V3.Port1 port_oben annotation(
      Placement(visible = true, transformation(origin = {-6, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Flaschenzug_V3.Port2 port_unten annotation(
      Placement(visible = true, transformation(origin = {-4, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Flaschenzug_V3.Port_Rolle_Seilanschluss port_links annotation(
      Placement(visible = true, transformation(origin = {-80, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Flaschenzug_V3.Port_Rolle_Seilanschluss port_rechts annotation(
      Placement(visible = true, transformation(origin = {66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  parameter Real m = 1;
  constant Real g = 9.81;
  Real F_g;
  //Real F_Rolle;
  equation
  
F_g = m*g;
  port_rechts.F = port_links.F;
  port_oben.F = port_rechts.F + port_links.F + port_unten.F  + F_g;
  
  
  port_links.s = port_rechts.s;
  port_oben.s = port_unten.s;
  
  
  annotation(
      Icon(graphics = {Ellipse(fillColor = {85, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-80, 80}, {80, -80}}, endAngle = 360), Text(origin = {1, 6}, extent = {{-35, 32}, {35, -32}}, textString = "Rolle")}));end Rolle_oben;

  model Test_einzelRollen
  Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {1, 77}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
  Flaschenzug_V3.Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {1, 41}, extent = {{-27, -27}, {27, 27}}, rotation = 0)));
  Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {0, -88}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Flaschenzug_V3.Motor motor1 annotation(
      Placement(visible = true, transformation(origin = {-78, 52}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
  Flaschenzug_V3.Rolle_unten rolle_unten1 annotation(
      Placement(visible = true, transformation(origin = {0, -46}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
  equation
    connect(fixpoint1.portFix, rolle_oben.port_oben) annotation(
      Line(points = {{2, 76}, {0, 76}, {0, 65}, {1, 65}}, color = {255, 0, 0}));
    connect(motor1.Port_Motor, rolle_oben.port_links) annotation(
      Line(points = {{-78, 40}, {-78, 41}, {-23, 41}}, color = {255, 0, 0}));
    connect(rolle_oben.port_rechts, rolle_unten1.port_rechts) annotation(
      Line(points = {{25, 41}, {24, 41}, {24, -46}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_links, rolle_oben.port_unten) annotation(
      Line(points = {{-24, -46}, {-32, -46}, {-32, -20}, {1, -20}, {1, 17}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_unten, masse1.PortMasse) annotation(
      Line(points = {{0, -70}, {0, -70}, {0, -84}, {0, -84}}, color = {255, 0, 0}));
  annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));end Test_einzelRollen;

  model Rolle_unten
    Flaschenzug_V3.Port2 port_unten annotation(
      Placement(visible = true, transformation(origin = {-4, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port_Rolle_Seilanschluss port_links annotation(
      Placement(visible = true, transformation(origin = {-80, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port_Rolle_Seilanschluss port_rechts annotation(
      Placement(visible = true, transformation(origin = {66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  
    parameter Real m = 1;
    constant Real g = 9.81;
    Real F_g;
  //  Real F_Rolle;
  equation
   
   
      F_g = m * g;
//port_rechts.F + port_links.F = port_unten.F;
    port_rechts.F = port_links.F;
    port_rechts.F + port_links.F  = port_unten.F ;
//  port_links.s = port_rechts.s;
    port_rechts.s / 2 = port_unten.s;
    annotation(
      Icon(graphics = {Ellipse(fillColor = {85, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-80, 80}, {80, -80}}, endAngle = 360), Text(origin = {1, 6}, extent = {{-35, 32}, {35, -32}}, textString = "Rolle")}));
  
  end Rolle_unten;

  model Test_3Rollen
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {1, 77}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {2, -84}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Motor motor1 annotation(
      Placement(visible = true, transformation(origin = {-78, 52}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
  Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {1, 41}, extent = {{-27, -27}, {27, 27}}, rotation = 0)));
  Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {2, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Rolle_oben rolle_unten annotation(
      Placement(visible = true, transformation(origin = {2, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(rolle_unten.port_unten, masse1.PortMasse) annotation(
      Line(points = {{2, -58}, {2, -79}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_rechts, rolle_unten.port_oben) annotation(
      Line(points = {{12, -14}, {16, -14}, {16, -32}, {2, -32}, {2, -38}, {2, -38}}, color = {255, 0, 0}));
    connect(rolle_unten.port_links, rolle_oben1.port_links) annotation(
      Line(points = {{-8, -48}, {-6, -48}, {-6, -14}, {-8, -14}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_oben, rolle_oben.port_unten) annotation(
      Line(points = {{2, -5}, {2, 16}}, color = {0, 170, 0}));
    connect(rolle_oben.port_rechts, rolle_unten.port_rechts) annotation(
      Line(points = {{26, 42}, {36, 42}, {36, -48}, {12, -48}, {12, -48}}, color = {255, 0, 0}));
    connect(fixpoint1.portFix, rolle_oben.port_oben) annotation(
      Line(points = {{2, 76}, {0, 76}, {0, 65}, {1, 65}}, color = {255, 0, 0}));
    connect(motor1.Port_Motor, rolle_oben.port_links) annotation(
      Line(points = {{-78, 40}, {-78, 41}, {-23, 41}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Test_3Rollen;

end Flaschenzug_V3;
