;****************************************************************
; 	Zelda 3 Redux - Credits text data
;****************************************************************

;----------------------------------------
; 	Table file
;----------------------------------------
incsrc "code/text/credits.txt"


; First text is:
; the return of the king (small text)
; HYRULE CASTLE (BIG TEXT)

; Go to WinHex32, go to relative search and type: return, it will tell you, that the return is 2B 1E 2D 2E 2B 27

; THE RETURN... = 2D 21 1E 9F 2B 1E 2D 2E 2B 27 ...

; Now you have the location
; Go to WinHex32, go to relative search and type: Castle
; It will tell you, that the castle is 5F 5D 6F 70 68 61 and 85 83 95 96 8E 87

; Now you have the locations

;----------------------------------------
; 	Alphabet
;----------------------------------------

SMALL TEXT COLOUR1    SMALL TEXT COLOUR2    SMALL TEXT COLOUR3
A=1A                  A=38                  A=00
B=1B                  B=39                  B=01
C=1C                  C=3A                  C=02
D=1D                  D=3B                  D=03
E=1E                  E=3C                  E=04
F=1F                  F=3D                  F=05
G=20                  G=3E                  G=06
H=21                  H=3F                  H=07
I=22                  I=40                  I=08
J=23                  J=41                  J=09
K=24                  K=42                  K=0A
L=25                  L=43                  L=0B
M=26                  M=44                  M=0C
N=27                  N=45                  N=0D
O=28                  O=46                  O=0E
P=29                  P=47                  P=0F
Q=2A                  Q=48                  Q=10
R=2B                  R=49                  R=11
S=2C                  S=4A                  S=12
T=2D                  T=4B                  T=13
U=2E                  U=4C                  U=14
V=2F                  V=4D                  V=15
W=30                  W=4E                  W=16
X=31                  X=4F                  X=17
Y=32                  Y=50                  Y=18
Z=33                  Z=51                  Z=19
APOSTROPH=34                                  
EMPTY=9F              EMPTY=9F               EMPTY=9F      

;----------------------------------------

BIG TEXT (2 VALUES, UPPER ROW, LOWER ROW,
BUT UPPER ROW ALWAYS TOGETHER AND LOWER ROW ALWAYS TOGETHER)

  UP  LOW
A=5D,  83
B=5E,  84
C=5F,  85
D=60,  86
E=61,  87
F=62,  88
G=63,  89
H=64,  8A
I=65,  8B
J=66,  8C
K=67,  8D
L=68,  8E
M=69,  8F
N=6A,  90
O=6B,  91
P=6C,  92
Q=6D,  93
R=6E,  94
S=6F,  95
T=70,  96
U=71,  97
V=72,  98
W=73,  99
X=74,  9A
Y=75,  9B
Z=76,  9C
EMPTY= 9F


;----------------------------------------


Lets say you want to change:
the return of the king (22 letters)

to this:
the evil is vanishing (21 letters) 22 is 21+1


With relative search find the starting byte and replace the 22 old bytes with this:
2D 21 1E, 9F, 1E 2F 22 25, 9F, 22 2C, 9F, 2F 1A 27 22 2C 21 22 27 29, 9F

;----------------------------------------

Lets say you want to change:
HYRULE CASTLE (13 letters)

to this:
DARK TEMPLE (11 letters) 13 is 1+11+1 (first and second value must be empty because of the centering)

With relative search find the starting byte of the First row and replace the 13 old bytes with this:
9F, 60 5D 6E 67, 9F, 70 61 69 6C 68 61, 9F

With relative search find the starting byte of the Second row and replace the 13 old bytes with this:
9F, 86 83 94 8D, 9F, 96 87 8F 92 8E 87, 9F

