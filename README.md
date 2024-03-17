# Scalable rollfilm back - 6x9...6x17...maybe even 6x24? 

_This is my attempt to re-engineer my old 6x12 rollfilm back into a scalable and adaptable design._

As a starting point - here's my old 6x12 TinkerCAD-design: https://www.thingiverse.com/thing:2894651 

## Project goals:
- of course a 3d printable and usable rollfilm back.
- different formats possible with type 120 rollfilm - from 6x6 up to 6x24 (depending on the targeted camera format) 
- The design should be scalable for being used with 4x5", 5x7" or even 8x10" large format cameras by just changing a handful of variables.
- Improving my OpenSCAD skills. Learning to use it efficiently. Learning to do good parametric development/design.
- Learning git/github and sharing my code with other people
- Checking out the limits of home 3D printing with a very limited set of available tools

## Some technical goals:
- modular design
- all parts must be either 3D-printable or easily available via Amazon, eBay, Aliexpress or Temu.
- no special tools required besides a decent 3D printer and some common tools like little files, screwdrivers, sanding paper, cutter, scissors, ...
- no exotic third party parts/components
- form follows function
- KISS

## Early design decisions:
- keeping the basic concepts of my old 6x12 back
- parts for the base plate won't be glued (except dark slide light seal) ==> dovetails
- film "roller"/re-director will be integrated and printed
- less "cubical" design
- using the excellent BOSL2 library https://github.com/revarbat/BOSL2/wiki 
- no "extension" over the targeted platform and thus avoiding to move the film plane back (and using spacers or dedicated ground glassses): max format for 4x5" will be 6x12, max format for 5x7" will be 6x17

## already done
- nothing notable yet

## to do / next steps
- re-engineering all parts based on my old concepts with some slight improvements

## update 2024-03-01
- looks like it will be a bit more re-engineering than just "porting" my old design to OpenSCAD. After having a look at some other (commercial) roll film backs like the Super Rollex or the Toyo family, I will also use some inspirations from there.

## update 2024-03-17 
- I always wanted to ge rid of the screws for locking cover and baseplate together, so I am now locking cover, baseplate_top and baseplate_bottom via dovetails.
- currently missing / not yet (re-) designed:
- - advancing lever ==> I am currently evaluating different ratchet mechanisms/designs
- - spool holders ==> will be quite simple parts
- - film counter ==> for the first version I will stick to the "spy window"
- - light seal for the baseplate bottom, but this is just a simple cubical to be glued into the base plate  

**Some very kind people asked me about the possibility to show their appreciation by donating to me.**

If you really felt somehow obliged to do so, then you should use https://paypal.me/EdgarKech :-) .
But I am also happy if you post pictures of your build to https://www.facebook.com/groups/3dprinting.and.analog.photography/


