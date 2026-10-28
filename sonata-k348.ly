%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in G major"
  opus   = "K.348"
  source = "https://s9.imslp.org/files/imglnks/usimg/8/82/IMSLP914903-PMLP527364-E4463_34-36-Scarlatti_-_Keyboard_Sonatas,_L.118-132.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0.3 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'((0.3 . 0) (0 . -1.5) (0 . -0.5) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . -0.5) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc

%
% Music
%

global = {
  \time 3/4
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    \stemDown g'16( b a c  b d c e  d fs e g |
    fs16 a g b  a g fs e  d c b a |
    b4) r r |
    R2. |
    r16 \osp #'(0 . -1) d( e fs  g d b g \stemNeutral d c' b a |
    b16 d e fs  g e b g  d c' b a |
    b2) \grace { c16( } \afterGrace 15/16 c4)-\slurShapeA (\trill { b16 c } |
    b2) \grace { c16( } \afterGrace 15/16 c4)-\slurShapeB (\trill { b16 c } |
    
    \barNumberCheck 9
    b16-.)-\slurShapeC ( g' fs g  b g fs g  b,-. b' a g |
    a,16-. fs' e fs  a fs e fs  a,-. a' g fs |
    g,16-. e' d e  g e d e  g,-. g' fs e |
    fs4 d) fs-. |
    \osp #'(0 . 2.5) a4( a,) g'-. |
    fs4( d) fs-. |
    \osp #'(2.5 . 0) a,4( a') <d, fs>-. |
    <cs e>4( a') <d, fs>-. |
    
    \barNumberCheck 17
    <cs e>4( g') <cs, e>-. |
    r16 a'( gs a~  a g fs e  d cs b a |
    b16-. g' fs g  a,-. fs' e fs  g,-. e'-. d cs |
    a'16 g fs e  d cs b a  g fs e d) |
    \osp #'(2.5 . 0) a'4( a') <d, fs>-. |
    <cs e>4( a') <d, fs>-. |
    <cs e>4( g') <cs, e>-. |
    r16 a'-\slurShapeD ( gs a~  a g fs e  d cs b a |
    
    \barNumberCheck 25
    g16-. g' fs g  a,-. fs' e fs  g,-. e'-. d cs |
    d16 a' g a  fs g e fs  d e a, cs |
    d16 a g a  fs g e fs  d e a, cs |
    d16\noBeam \clef bass a g a  fs g e fs  d d' e, cs' |
    d2.) \clef treble |
  }
  \repeat volta 2 {
    a''16( fs d a  fs a fs d  b' g d g ) |
    a'16( fs d a  fs a fs d  b' g d g ) |
    a'16( fs ds c!  a fs ds fs  a ds fs a) |
    
    \barNumberCheck 33
    <b, ds fs a>2 <b e g>4-. |
    <b ds fs>2 <b e g>4-. |
    <c fs a>2 <ds fs>4-. |
    r16 g( fs g  b e, ds e  a fs e fs |
    g2 b4) |
    r16 \osp #'(-2 . 0) e,( ds e  c' a b g  a fs g e |
    fs2 a4) |
    r16 d,-\slurShapeE ( cs d  b' g a fs  g e fs d |
    
    \barNumberCheck 41
    e16 c d b  c a b g  a fs g e) |
    <d' fs a>4( d-.) <d g b>-. |
    <d fs a>4( d-.) <d g b>-. |
    <c fs a>2 q4-. |
    r16 g'( b a  g fs e d \stemDown c b a g |
    e'16 c d e  d b c a \stemNeutral b g a fs) |
    d''16( c b a  g fs e d \stemDown c b a g) |
    <d' fs a>4( d-.) <d g b>-. |
    
    \barNumberCheck 49
    <d fs a>4( d-.) <d g b>-. |
    <c fs a>2 q4-. |
    r16 g'-\slurShapeF ( b a  g fs e d  c b a g |
    e'16 g fs e  d c b a \stemNeutral g a d, fs |
    g16) d''-\slurShapeG ( c d  b c a b  g a d, fs |
    g16 d c d  b c a b  g a d, fs |
    g \clef bass d c d  b c a b  g a d, fs |
    g2.) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    g,2. |
    R2. |
    \clef treble g'16( b a c  b d c e  d fs e g |
    fs16 a g b  a g fs e  d c b a |
    g2) \clef bass d4-- |
    g,2-- d'4-- |
    g,16-.->\noBeam d''( e fs  g d b g  d c' b a |
    g16 d' e fs  g d b g  d c' b a |
    
    \barNumberCheck 9
    g2) g,4-. |
    fs2 fs'4-. |
    e2 a,4-. |
    d16-.( d' cs d  fs d cs d  d,-. d' cs b) |
    a,16-.( a' gs a  cs a gs a  a,-. g' fs e) |
    d16-.( d' cs d  fs d cs d  d,-. d' cs b) |
    a,16( cs e a  cs e cs a  fs' a fs d) |
    a,16( cs e a  cs e cs a  fs' a fs d) |
    
    \barNumberCheck 17
    g,,16( cs e g  cs e cs g  e' g e cs) |
    fs,,4-. \clef treble d''''-. \clef bass fs,,,,( |
    g4 a) a-. |
    d,4( fs g) |
    a16( cs e a  cs e cs a  fs' a fs d) |
    a,16( cs e a  cs e cs a  fs' a fs d) |
    g,,16( cs e g  cs e cs g  e' g e cs) |
    fs,,4-. \clef treble d''''-. \clef bass fs,,,,( |
    
    \barNumberCheck 25
    g4 a) a-. |
    d,4( fs a |
    d,4 fs a |
    d,4 fs a |
    d,2.) |
  }
  \repeat volta 2 {
    <d d'>2. |
    q2. |
    <c! c'!>2. |
    
    \barNumberCheck 33
    b'16( ds fs b  ds fs ds b  e g e b) |
    b,16( ds fs b  ds fs ds b  e g e b) |
    a,16( c ds fs  ds' fs ds a  ds fs ds a) |
    g,4-. <g' e'>-. <fs ds'>-. |
    e16-.( e' ds e  g-. e ds e  e,-. d' c b) |
    a,2( c4) |
    d16-.( d' cs d  fs-. d cs d  d,-. c' b a) |
    g,4_( g' b, |
    
    \barNumberCheck 41
    c4 c, c') |
    d16( fs a d \clef treble  fs a fs d  b' d b g) |
    \clef bass d,16( fs a d \clef treble  fs a fs d  b' d b g) |
    \clef bass c,,16( fs a c  fs a fs c  fs a fs c) |
    b,4 \clef treble d'''-. \clef bass b,,,,( |
    c4 d) d-. |
    g4( b c) |
    d16( fs a d \clef treble  fs a fs d  b' d b g) |
    
    \barNumberCheck 49
    \clef bass d,16( fs a d \clef treble  fs a fs d  b' d b g) |
    \clef bass c,,16( fs a c  fs a fs c  fs a fs c) |
    b,4 \clef treble d'''-. \clef bass b,,,,( |
    c4 d) d-. |
    g4( b d |
    g,4) g( d |
    g4) g-. d-. |
    \override Parentheses.font-size = #-3
    <\parenthesize g, g'>2. |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2.\f |
    s2.*3 |
    s16 s8\< s16\! s8.\> s16\! s4 |
    s8.\< s16\! s8.\> s16\! s4 |
    s16 s8-\tweak Y-offset #1 \< s16\! s8.-\tweak Y-offset #1 \> s16\! s4 |
    s8.-\tweak Y-offset #1 \< s16\! s8.-\tweak Y-offset #1 \> s16\! s4 |
    
    \barNumberCheck 9
    s16 s8.\p s2 |
    s2. |
    s2 s8.\< s16\! |
    s4\mf s2\cresc |
    s2.*2 |
    s2.-\tweak Y-offset #-1 \f |
    s2. |
    
    \barNumberCheck 17
    s2.*3 |
    \override DynamicLineSpanner.Y-offset = #-4.5
    s2.\p |
    s2.\cresc |
    s2.*2 |
    \override DynamicLineSpanner.Y-offset = #0
    s2.\f |
    
    \barNumberCheck 25
    s2.*5 |
  }
  \repeat volta 2 {
    s2.\f |
    s2.*2 |
    
    \barNumberCheck 33
    s2.*3 |
    s2.-\tweak Y-offset #-4.5 \p |
    s2.*3 |
    s2.\cresc |
    
    \barNumberCheck 41
    s2. |
    s2.\f |
    s2.*4 |
    s2.\p |
    s2.-\tweak Y-offset #0.5 \cresc |
    
    \barNumberCheck 49
    s2.*2 |
    s2.-\tweak Y-offset #-5 \f |
    s2.*5 |
  }
}

pedal = {
  \repeat volta 2 {
    s2.*6 |
    s2 s4\sd |
    s2\su s4\sd |
    
    \barNumberCheck 9
    s2.\su |
    s2.*5 |
    s2-\tweak Y-offset #-2 \sd s4\su |
    s2-\tweak Y-offset #-2 \sd s4\su |
    
    \barNumberCheck 17
    s2.\sd |
    s2.-\tweak Y-offset #-1 -\tag layout \sd -\tag midi \sud |
    s2.-\tweak Y-offset #-1 \su |
    s2. |
    s2-\tweak Y-offset #-2 \sd s4\su |
    s2-\tweak Y-offset #-2 \sd s4\su |
    s2.\sd |
    s2.-\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 25
    s2.\su |
    s2.*4 |
  }
  \repeat volta 2 {
    s2-\tweak Y-offset #-1 \sd s4\su |
    s2-\tweak Y-offset #-1 \sd s4\su |
    s2.-\tweak Y-offset #-2 \sd |
    
    \barNumberCheck 33
    s2-\tweak Y-offset #-1 -\tag layout \sd -\tag midi \sud s4\su |
    s2-\tweak Y-offset #-1 \sd s4\su |
    s2.\sd |
    s2.\su |
    s2.*4 |
    
    \barNumberCheck 41
    s2. |
    s2\sd s4\su |
    s2\sd s4\su |
    s2.\sd |
    s2-\tweak Y-offset #1 -\tag layout \sd -\tag midi \sud
      s4-\tweak Y-offset #-1 \su |
    s2.*2 |
    s2\sd s4\su |
    
    \barNumberCheck 49
    s2\sd s4\su |
    s2.\sd |
    s2-\tweak Y-offset #1 -\tag layout \sd -\tag midi \sud
      s4-\tweak Y-offset #-1 \su |
    s2.*5 |
  }
}

tempi = {
  % TODO \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    \tempo "Prestissimo" 4 = 144
    s2.*24 |
    
    \barNumberCheck 25
    s2.*3 |
    \tempo 4 = 132 s4 \tempo 4 = 120 s \tempo 4 = 112 s |
    \tempo 4 = 104 s2. |
  }
  \repeat volta 2 {
    \tempo 4 = 144
    s2.*3 |
    
    \barNumberCheck 33
    s2.*16 |
    
    \barNumberCheck 49
    s2.*6 |
    \tag layout { s2.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4 = 132 s4 \tempo 4 = 120 s \tempo 4 = 112 s |
          \tempo 4 = 104 s2. |
        }
        {
          \tempo 4 = 126 s4 \tempo 4 = 112 s \tempo 4 = 100 s |
          \tempo 4 = 80 s2. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2.*3 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \pageBreak
  
  % page 2
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*3 \break
  s2.*3 \break
  s2.*3 \pageBreak
  
  % page 3
  s2.*3 \break
  s2.*3 \break
  s2.*3 \break
  s2.*3 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
