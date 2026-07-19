(Probe-and-zero WITH 0.1mm Z compensation -- run AFTER manually jogging to the correct X/Y position)
(This is a linear script -- it cannot check anything itself. Verify before running:)
(  1. Part isolated; clip + tool/target on BARE METAL, no coating/oxide at contact)
(  2. Run ? twice -- pin field must read OPEN as 0000 or Pn:000, NOT triggered as P000)
(  3. Jog Z to within ~10mm of the face first -- the probe reach below is deliberately small)
(  4. Check remaining Z travel before running -- see $132 / current Z -- if less than)
(     ~10mm remains, reduce the Z-8 reach below or you will get ALARM:2, not a probe)
(  COMPENSATION: stock has a slight measured cant that makes the g-code cut ~0.2mm)
(  deeper than programmed in the worst case; confirmed this doesn't meaningfully affect)
(  the final part. Z0 here is deliberately set 0.1mm AWAY from the true probed surface)
(  not at the actual contact point -- splitting the difference so every programmed depth)
(  runs ~0.1mm shallower than an exact-to-the-probe zero would produce.)

G21                       (mm)
G90                       (absolute)
G10 L20 P1 X0 Y0          (zero X/Y at the current position -- wherever you jogged to)

S0                        (RPM set point must be S0 before enabling the spindle)
M3                        (spindle on, clockwise -- DD's manual: probing needs the spindle)
S5000                     (rotating for accurate diameter averaging; slow to limit vibration)

G91                       (relative -- probe reach measured from current position)
G38.2 Z-8 F30             (reach toward the part; ALARMS if no contact within 8mm)
G0 Z0.1                   (retreat 0.1mm from the TRUE probed surface -- the compensation)
G90                       (back to absolute)
G10 L20 P1 Z0             (zero Z here -- 0.1mm away from the actual contact point)

M5                        (spindle off)

G91
G0 Z3                     (retract 3mm further off the face)
G90

M2
