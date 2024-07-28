# Disclaimer
It is the user's responsibility to know their local laws before attempting to use these files. Nobody is responsible for violaion of local laws other than the user of these files.

# License Requirements
All the files in this repository (Veziik/X95-TeleStock) are licensed under the GNU General Public License v3.0. As per the license, any modification or commercial use of this code needs to reference the git repository, in order to do so, simply include a physical copy of the README with any X95s sold with this stock attached. For the original files and updates to this design, visit [https://github.com/Veziik/X95-TeleStock](https://github.com/Veziik/X95-TeleStock). 

# Printing + Machining Instructions
 - From now on, I'm going to assume that you are going to be printing in PLA+ or equivalent and already have the settings dialed in on your filament. In my case, I was using [Polymaker 3D Printer PLA+ Filament 1.75mm](https://smile.amazon.com/dp/B097SVHDR5/ref=twister_B09MBYF326?_encoding=UTF8&th=1) with a nozzle temperature of 210°C and a bed temperature of 60°C. Assume that you don't need supports until otherwise specified.
 - For the metal arms and locking pin, youll want a bar or sheet of 3/16" thick metal, it can be whatever you want, but I use mild steel.


1. Go into the Content Files folder.

2. Print the following files on your printer of choice at 70% infill (I used gyroid infill) and orient them sideways:
    - LockingBody.stl
    - TelescopingPad.stl
    - LockingButton.stl.
    - Endcap-Left.stl
    - Endcap-Right.stl

3. You'll need one of the following to cut the locking pin and the two steel arms: A waterjet cutter, a laser cutter, a cnc mill, or a regular mill. Ideally you'll want to use a waterjet and/or a service that provides cutting of sheet metak to bypass this step.

4. The steel arms need to have a countersink drilled into them on opposing sides, use the included STL file to locate and properly drill out the countersink for an M4x8mm countersunk screw. This can be done with a hand drill and some patience.

5. The locking pin can optionally have one of the long edges bevelled to make telescoping easier on the ears and hands.

6. Make sure to drill out the pin hole in TelescopingPad.stl with a 4mm drill bit to make sure inserting the roll pin isn't the hardest thing you'll do all day .


# Assembly Instructions
## Required Parts
- A 3mm spring of at least 15mm in length. Degree of stiffness is up to you.
- The parts printed/machined in the Printing + Machining Instructions section.
- 2x 4x18mm Roll Pins or one long 4mm roll pin, for use as a crosspin(s). Two pins is actually ideal here, as it means that each arm will be pinned towards the inside of the telescoping pad.
- 2x M4x8mm or M4x10mm Countersunk Screws.
- 2x 4mm Bolts.

# IF YOU ARE BUILDING THIS AT HOME FOR YOUR OWN X95, FOLLOW EITHER SET OF INSTRUCTIONS EXACTLY TO REMAIN COMPLIANT WITHIN YOUR STATE THROUGHOUT THE BUILD PROCESS
## Build order:
1. Do not disassemble your X95 yet.
2. Insert the spring into the main locking body, aka the body which houses the button and locking pin.
3. Insert the button, with the locking pin cutout facing towards the dovetail of the main locking body.
4. While maintaining some pressure on the button to align it properly, insert the locking pin, with the bevel of the locking pin facing down and towards the dovetail of the main locking body. Push the button all the way up once the locking pin is centered, the button should be able to be gently pressed until nearly flush.
5. Set aside the locking assembly for now.
6. Insert and pin each telescoping arm to the locking pad using the 4mm roll pin. Make sure that each bar goes on the correct side
7. Push the button up all the way into the locking body and insert both of the telescoping arms in from the dovetail side of the locking body. This is where we check to make sure that both of the arms glide comfortably, but snug to the locking body, in addition to locking and unlocking without the application anything mroe than a gentle push. Both arms should have their cutouts facing up, and the holes for the crosspin with the pad should away from the dovetail side.
8. Extend the arm to any locking point, slide the telescoping pad so that the flat of the main body and the hollowed out section of the pad touch when fully collapsed.
9. Function test, make sure that you can extend the butt all the way out and that the button allows you to disengage the locking mechanism. Make sure its all smooth and to your liking.
10. Insert a 4mm bolt into each of the hexagonal holes inside of the endcaps.
11. Screw the endcaps on the end of each rail. Make sure that the encaps are on the correct sides.
12. Okay, NOW you can disassemble your X95, all the way to the point where you remove your butttstock. If you dont know how to disassebmle your X95, read the manual for your X95 to learn its disassembly.
13. Extend the telescoping pad all the way from the locking body. Attach the locking body via the screw first, then run the pin through SLOWLY to make sure that the tolerances all line up. If its too tight a fit, drill it out a little bit.
14. Function test again: Repeat step 9 but with the butt attached.
15. Done! Feel free to rubberize the pad itself for better interface with the body.

# Use Guidelines
This is a telescoping stock made out of plastic, it is not made for buttstroking doors, tables, neighbors, or yourself. It will otherwise readily handle the recoil of the 9mm, 5.56 and .300Blk catrtridges when fully collapsed or at any locking point.

### When Repairing, ALWAYS keep at least one telesoping arm inserted into the main locking body or completely disassemble the firearm before repairing, regardless of damage taken. NEVER leave the main locking body without telescoping bars. When replacing both bars, simply swap the bars out one at a time, and always keep the pad connected to the telescoping bars whenever possible. 
