package NeuerFlaschenzug
  connector Port_M_alpha
  
    flow Modelica.SIunits.Torque M    "Drehmoment" ;
    Modelica.SIunits.Angle alpha  "Drehwinkel";
    annotation(
      Icon(graphics = {Ellipse(origin = {4, 7}, fillColor = {0, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-74, -73}, {74, 73}}, endAngle = 360)}));
  end Port_M_alpha;

  connector Port_F_s
  
    Modelica.SIunits.Length s     "Weg";
    flow Modelica.SIunits.Force  F      "Kraft";
    annotation(
      Icon(graphics = {Ellipse(origin = {7, 3}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-73, -73}, {73, 73}}, endAngle = 360)}));
  end Port_F_s;

  model EMotor
  
    //Konstanten
    constant Real g = Modelica.Constants.g_n "Erdbeschleunigung";
    constant Real pi = Modelica.Constants.pi "Pi";
    
    //Parameter
    parameter Modelica.SIunits.Inductance L_a = 1.6e-3                            "Ankerinduktivität";
    parameter Modelica.SIunits.Resistance R_a = 7.19                              "Ankerwiderstand";
    parameter Modelica.SIunits.VoltageSecond ke = 79e-2                           "Spannungskonstante";
    parameter Modelica.SIunits.Inertia J_tot = 202e-7                             "resultierende Trägheit am Motor in kg/m^2";
    parameter Modelica.SIunits.Voltage U_a = 48                                   "Ankerspannung";
    
    //Variablen
    Modelica.SIunits.Current I_a(start = 0)                                       "Ankerstrom";
    Modelica.SIunits.Voltage U_g                                                  "induzierte Spannung"; 
    Modelica.SIunits.Torque M_e                                                   "elektrisches Drehmoment";
    Modelica.SIunits.Torque M_L                                                   "Lastmoment in Nm";
    Modelica.SIunits.Frequency f                                                  "Frequenz in 1/s";  
    Modelica.SIunits.Frequency omega                                              "Rotorkreisfrequenz";
    Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm n(start = 0)      "Drehzahl in 1/min";
    Modelica.SIunits.Angle alpha(start = 0)                                       "Drehwinkel";
    Modelica.SIunits.ElectricalTorqueConstant kt                                  "Drehmomentenkonstante";
    Port_M_alpha port_M_alpha1 annotation(
      Placement(visible = true, transformation(origin = {38, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {38, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    kt = ke / (2 * pi);
    omega = der(alpha);
    omega = 2*pi*f;
    alpha = port_M_alpha1.alpha;
    M_L = port_M_alpha1.M;
    U_a = R_a * I_a + L_a * der(I_a) + U_g;
    U_g = ke * n;
    n = f*60;
    M_e = kt * I_a;  
    M_e = J_tot*der(omega) + M_L;

  annotation(
      Icon(graphics = {Rectangle(origin = {-15, -1}, extent = {{-53, 51}, {53, -51}}), Text(origin = {-12, 1}, extent = {{-28, 31}, {28, -31}}, textString = "M")}));
      
  end EMotor;

  model Getriebe
    parameter Real i = 20;                                  //Übersetzung
  
  NeuerFlaschenzug.Port_M_alpha port_M_alpha_I annotation(
      Placement(visible = true, transformation(origin = {-46, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-48, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Port_M_alpha port_M_alpha_O annotation(
      Placement(visible = true, transformation(origin = {56, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {56, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation

    i = port_M_alpha_I.alpha  / (-port_M_alpha_O.alpha);
    i = (-port_M_alpha_O.M) / port_M_alpha_I.M;
  
  annotation(
      Icon(graphics = {Rectangle(origin = {5, -5}, extent = {{-51, 49}, {51, -49}}), Text(origin = {3, -1}, extent = {{-27, 17}, {27, -17}}, textString = "G")}));end Getriebe;

  model Seilwinde
  Port_M_alpha port_M_alpha1 annotation(
      Placement(visible = true, transformation(origin = {-54, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-54, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Port_F_s port_F_s1 annotation(
      Placement(visible = true, transformation(origin = {64, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {64, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
    constant Real pi = Modelica.Constants.pi "Pi";
    parameter Modelica.SIunits.Length D_SW = 0.1  "Durchmesser Seilwinde";
  
  equation
    port_M_alpha1.M = port_F_s1.F*(D_SW/2);             //M = F*Hebelarm
    port_F_s1.s = (D_SW/2)*port_M_alpha1.alpha*pi/180;  //s = Radius*alpha (in Bogenmaß)

  annotation(
      Icon(graphics = {Rectangle(origin = {6, -7}, extent = {{-58, 57}, {58, -57}}), Text(origin = {6, -2}, extent = {{-34, -26}, {34, 26}}, textString = "SW")}));
      
  end Seilwinde;

  model Masse
  Port_F_s port_F_s1 annotation(
      Placement(visible = true, transformation(origin = {-4, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-4, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  constant Real g=9.81; //Erdbeschleunigung
  parameter Real m=1 "Masse";
  Real v; //Geschwindigkeit
  Real a; //Beschleunigung
  Real s; //Beschleunigung
  
  equation
  s = port_F_s1.s;
port_F_s1.F=m*g+m*a;
  der(v)=a;
  der(s)=v;
  
  
  annotation(
      Icon(graphics = {Polygon(origin = {-1, -8}, points = {{-21, 64}, {-63, 14}, {-63, -68}, {59, -68}, {63, 14}, {17, 64}, {-21, 64}}), Text(origin = {-1, -9}, extent = {{-43, -35}, {43, 35}}, textString = "m")}));
      
  end Masse;

  model Zusammenbau1
  EMotor eMotor1 annotation(
      Placement(visible = true, transformation(origin = {-74, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Getriebe getriebe1 annotation(
      Placement(visible = true, transformation(origin = {-54, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Seilwinde seilwinde1 annotation(
      Placement(visible = true, transformation(origin = {-26, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  NeuerFlaschenzug.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {10, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(seilwinde1.port_F_s1, masse1.port_F_s1) annotation(
      Line(points = {{-20, -10}, {10, -10}}));
    connect(getriebe1.port_M_alpha_O, seilwinde1.port_M_alpha1) annotation(
      Line(points = {{-48, -10}, {-32, -10}, {-32, -10}, {-32, -10}}));
    connect(eMotor1.port_M_alpha1, getriebe1.port_M_alpha_I) annotation(
      Line(points = {{-70, -10}, {-58, -10}, {-58, -10}, {-58, -10}}));
  end Zusammenbau1;
end NeuerFlaschenzug;
