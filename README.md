# Burckhardt-Tire-Model
MATLAB / SIMULINK
In this part, I implemented the Burckhardt tire model as a literature-based model. This model
is commonly used in vehicle dynamics and ABS studies due to its simple but nonlinear
structure.
The model was implemented in MATLAB/Simulink using a MATLAB Function block. In this
setup, slip ratio /, normal load , %, and road condition (road type) were used as inputs.
The parameters used in this model are taken from the literature paper titled “Wheel slip ratio
constraint control for ABS based on Tangent Type Barrier Lyapunov Function” (Wang et al.,
2022). Vehicle and tire parameters are adapted from this study to ensure consistency with
realistic applications.
The MATLAB Function block used in this part of the model is shown below. This function
calculates the longitudinal force , ! based on slip ratio /, normal load , %, and road condition
type.
Different road surfaces (such as dry asphalt, wet asphalt, snow, and ice) are included using a
parameter table, and the corresponding coefficients are selected depending on the input road
type.
Additionally, a MATLAB script was created to run the simulation and observe the longitudinal
force , ! for different road conditions. Using this script, the Burckhardt model was executed for
each road type separately, and the corresponding force responses were plotted.
The results allow a clear comparison of tire behavior on different surfaces such as dry asphalt,
wet asphalt, snow, and ice. The outputs obtained from the simulation are presented in the plot.
The results show that , ! is highest on dry asphalt and becomes almost zero on ice. This is
expected because dry asphalt provides high friction, while ice has very low friction, which
limits the tire’s ability to generate longitudinal force.
Wet asphalt and snow give intermediate values between these two extremes. This behavior
comes from the Burckhardt model, since it defines the friction coefficient depending on the
road type. Therefore, the differences in the results are mainly caused by the change in road
surface conditions, which directly affects the available tire force.
