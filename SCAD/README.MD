CAUTION: 
At the moment this is just initial work to re-engineer my "old" 6x12 rollfilm back with OpenSCAD (https://www.thingiverse.com/thing:2894651). 
Don't expect a full and working set of parts until release 1.0.



Preparation:

1.) Please make sure to install a fairly new version of OpenSCAD - versions 2021.01 or above are recommended and should be available for all common OS platforms.
2.) Please make sure to pull and install the following modules/libraries:

https://danielupshaw.com/openscad-rounded-corners/
==> we are using this for getting cubes with rounded corners

https://github.com/revarbat/BOSL2
==> we are using some modules/functions from this quite comprehensive library, e.g. dovetails, rectangular tubes, ...

3.) Review and modify the configuration in config.scad to your needs. For the most common target "platforms" and formats you will just have to choose and uncomment some variables. Just read&follow the comments in the config.scad file. 

Modification beneath simple configuration:

Naming and scripting conventions (tbd) 




