PID Control of a Nonlinear Liquid Tank System
Project Overview
This repository contains the modeling, simulation, and control analysis of a nonlinear liquid level system. The project utilizes a parallel PID architecture implemented in MATLAB/Simulink to regulate the water level of a tank characterized by a nonlinear discharge rate.

Access the Full Project Report here:

PID Control of a Nonlinear Liquid Tank System - Detailed Report

Key Engineering Specifications

Mathematical Model: The system is governed by the nonlinear differential equation A 
dt
dH
​
 =Q 
in
​
 −C 
H

​
 , where the outlet flow depends on the square root of the level.


Control Strategy: A parallel PID control law is used: u(t)=K 
p
​
 e(t)+K 
i
​
 ∫e(t)dt+K 
d
​
  
dt
de(t)
​
 .

Controller Tuning: The gains are set to K 
p
​
 =0.5, K 
i
​
 =0.2, and K 
d
​
 =0.0001.

Physical Constraints: The system includes a saturation block to represent the physical capacity of the pump, limited between 0 and 10 m 
3
 /s.

File Directory
Simulink Model: pid_controller_project.slx — The full graphical implementation of the control loop and plant dynamics.

MATLAB Script: project_pid_controller.m — Initialization file containing physical constants and PID parameters.

Documentation: Enhanced_PID_Liquid_Tank_Project_Report.pdf — The comprehensive technical report in standard LaTeX format.

Results: High-resolution scope outputs are located in the screenshots/ folder, documenting system response at various setpoints.

Technical Analysis
Based on simulation results, the following I&C engineering observations were made:


Zero Steady-State Error: The integral action effectively compensates for the nonlinear discharge, ensuring the level reaches the setpoint across all tested ranges.
+1

Actuator Saturation: For high setpoint demands (e.g., 5m), the controller drives the inlet flow to its maximum saturation limit (10m 
3
 /s) until the error is reduced.


Process Nonlinearity: The system response becomes more damped as the level increases due to the  
H

​
  discharge term providing higher natural outflow at higher pressures.
+1

Would you like me to help you write a GitHub Release description for when you tag your first version of this project?
