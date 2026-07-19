(Probe Z ONLY -- does not touch X or Y zero, only sets Z after probing)
(This is a linear script -- it cannot check anything itself. Verify before running:)
(  1. Part isolated; clip + tool/target on BARE METAL, no coating/oxide at contact)
(  2. Run ? twice -- pin field must read OPEN as 0000 or Pn:000, NOT triggered as P000)
(  3. Jog Z to within ~10mm of the face first -- the probe reach below is deliberately small)
(  4. Check remaining Z travel before running -- see $132 / current Z -- if less than)
(     ~10mm remains, reduce the Z-8 reach below or you will get ALARM:2, not a probe)

G21                       (mm)
G90                       (absolute)

S0                        (RPM set point must be S0 before enabling the spindle)
M3                        (spindle on, clockwise -- DD's manual: probing needs the spindle)
S5000                     (rotating for accurate diameter averaging; slow to limit vibration)

G91                       (relative -- probe reach measured from current position)
G38.2 Z-8 F30             (reach toward the part; ALARMS if no contact within 8mm)
G90                       (back to absolute)
G10 L20 P1 Z0             (zero Z at the actual contact point)

M5                        (spindle off)

G91
G0 Z3                     (retract 3mm off the face)
G90

M2
