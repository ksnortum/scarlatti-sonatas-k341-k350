%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in G minor"
  opus   = "K.347"
  source = "https://ks15.imslp.org/files/imglnks/usimg/d/d4/IMSLP914763-PMLP527124-E4463_31-33-Scarlatti_-_Keyboard_Sonatas,_L.118-132.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (2 . -2) (0 . 4) (3 . -3)) \etc
slurShapeB = \shape #'((0.3 . 0) (5 . -1) (0 . 1) (5.5 . -2)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0.5) (0 . 1) (0 . -1)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . 1.25)) \etc
slurShapeE = \shape #'((0.3 . 0) (0.3 . 0) (0 . -1) (0 . 1.25)) \etc
slurShapeF = \shape #'((0 . 0) (1 . 0) (0 . 0) (0 . 0)) \etc
slurShapeG = \shape #'((0.3 . 0) (0.3 . -0.75) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0.5) (-6 . 1) (0 . 0.2)) \etc
slurShapeI = \shape #'((0.3 . 0) (0.3 . -1) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'((0.5 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'((0 . 0.5) (0 . 0.5) (0 . 0) (0 . -0.75)) \etc
slurShapeM = \shape #'((0 . 0) (0 . 0) (0 . 1.5) (0 . -1.5)) \etc
slurShapeN = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeO = \shape #'((0 . -1) (0 . 0) (0 . 1) (0 . -0.2)) \etc
slurShapeP = \shape #'((0 . 0) (0 . -3) (0 . 1) (0 . 0)) \etc
slurShapeQ = \shape #'((0 . 0) (0 . -0.5) (0 . -1) (0 . 0)) \etc
slurShapeR = \shape #'(
                        ((0 . 2.5) (0 . 1.5) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeS = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeT = \shape #'((0 . 0) (0 . 0) (0 . -0.5) (0 . 1)) \etc

tieShapeA = \shape #'((0 . -1) (0 . -1.2) (1 . -1.2) (1 . -0.75)) \etc

moveNoteA = \once {
  \override Staff.NoteHead.extra-offset = #'(0.5 . 0)
  \override Staff.Stem.extra-offset = #'(0.5 . 0)
  \override Staff.Flag.extra-offset = #'(0.5 . 0)
}

%
% Music
%

global = {
  \time 4/4
  \key g \minor
  \override Timing.TimeSignature.style = #'numbered
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    <bf' d g bf>4\arpeggio r <a c d fs a>\arpeggio r |
    \tuplet 3/2 { <g bf d g>8-\slurShapeA (\arpeggio d' bf } \tupletOff
      \tuplet 3/2 8 {
        g d bf \staffDown \voiceFour g d bf)  \oneVoiceUp d''( ef f!) 
      } |
    \acciaccatura { f8 } \tuplet 3/2 { ef( d c) } \acciaccatura { d' }
      \tuplet 3/2 { c( bf a } g4 \grace { \moveNoteA fs16-\tieShapeA _~ }
      \afterGrace 15/16 fs4-\insideSlur \trill { e32 fs } |
    \tuplet 3/2 8 { 
      g8)-\slurShapeB ( d bf  g d bf \staffDown \voiceFour g d bf) 
    } \oneVoiceUp \acciaccatura { g''' } \tuplet 3/2 { f!( ef d) } |
    \acciaccatura { f8 } \tuplet 3/2 { ef( d c) } \acciaccatura { d' }
      \tuplet 3/2 { c-\slurShapeC \( bf a } g4 \grace { fs16( }
      \afterGrace 15/16 fs4)\trill { e32 fs } |
    g1\)~ |
    \tuplet 3/2 { g8 ef( d  c a' g  fs c' bf  a g fs } |
    g1)~ |
    
    \barNumberCheck 9
    \tuplet 3/2 { g8 ef( d  c a' g  fs c' bf  a g fs) } |
    \acciaccatura { c'8 } \tuplet 3/2 { bf( a bf) } \acciaccatura { bf }
      \tuplet 3/2 { a( g a) } \acciaccatura { a } \tuplet 3/2 { g( fs g) }
      \acciaccatura { g } \tuplet 3/2 { f( ef f) } |
    \acciaccatura { f8 } \tuplet 3/2 { ef( d ef) } \acciaccatura { ef }
      \tuplet 3/2 { d( c d) } \voiceOne c4(~ c~ |
    \tuplet 3/2 { c8 d c~ } c4~ \tuplet 3/2 { c8 d c~ } c4~ |
    \tuplet 3/2 { c8 d cs~  cs e d) } \oneVoice r2\fermata |
    r16 d,(^\aTempo ef e  f32 fs g a  bf[ b c cs] d2~ |
    \tuplet 3/2 { d8)-\slurShapeG ( d c } \acciaccatura { d }
      \tuplet 3/2 { c bf a) } \acciaccatura { f' } \tuplet 3/2 { ef( d c) }
      \acciaccatura { d } \tuplet 3/2 { c8( bf a) } |
    \acciaccatura { c'8 } \tuplet 3/2 { bf( a bf) } \acciaccatura { bf }
      \tuplet 3/2 { a( g a) } \voiceOne g4(~ g~ |
    
    \barNumberCheck 17
    \tuplet 3/2 { g8 a g~ } g4~ \tuplet 3/2 { g8 a g~ } g4~ |
    \tuplet 3/2 { g8 a gs~  gs b a) } \oneVoice r2\fermata |
    r16 \stemDown a,-\slurShapeH (^\aTempo bf b  c32 cs d e  f[ fs g gs] a2~ |
    \tuplet 3/2 { a8)-\slurShapeI ( a g } \acciaccatura { a }
      \tuplet 3/2 { g f e) } \acciaccatura { c' } \tuplet 3/2 { bf( a g) }
      \acciaccatura { a } \tuplet 3/2 { g( f e) } |
    \acciaccatura { g8 } \tuplet 3/2 { f( e f) } \acciaccatura { a }
      \tuplet 3/2 { g( f e } d4) \grace { cs16( }
      \afterGrace 15/16 cs4)-\slurShapeJ (\trill { b32 cs } |
    d4) \voiceOne \acciaccatura { g8 } \tuplet 3/2 { f( e f~ } f4)
      \acciaccatura { f8 } \tuplet 3/2 { e8( d e~ } |
    e4) \acciaccatura { e8 } \tuplet 3/2 { d-\slurShapeK ( cs d~ } d4 cs |
    d4) \tuplet 3/2 { f8( g a) } \acciaccatura { g }
      \tuplet 3/2 { f( e d  e f g) } |
    
    \barNumberCheck 25
    \acciaccatura { f8 } \tuplet 3/2 { \osp #'(0 . 1) e( d cs  d cs d~ }
      d4 cs |
    d2.) \grace { cs16( } \afterGrace 15/16 cs4)-\slurShapeL (\trill
      { b32 cs } |
    d1) |
  }
  \repeat volta 2 {
    \tuplet 3/2 { 
      \oneVoice <g, b d g>8(\arpeggio d' b  g d b  g) f'( ef!  d c b) |
      <b' d f af>8-\slurShapeM (\arpeggio f' d  b af f 
        \stemDown d) f'( ef  d c b) |
    }
    \tuplet 3/2 { c'8( g ef  c g) g'(  f af g) } \acciaccatura { g }
      \tuplet 3/2 { f( ef d) } |
    \tuplet 3/2 { ef8(\prall d ef  d af' g } \voiceOne f4)-\slurShapeN (~ f~ |
    \tuplet 3/2 { f8 g f~ } f4~ \tuplet 3/2 { f8 g f~ } f4~ |
    
    \barNumberCheck 33
    \tuplet 3/2 { f8 g fs~  fs a g) } \oneVoice r2\fermata |
    r16 \stemDown g,-\slurShapeO (^\aTempo af a  bf32 b c d  ef[ e f fs] g2~ |
    \tuplet 3/2 { g8) g-\slurShapeQ ( f } \acciaccatura { g }
      \tuplet 3/2 { f ef! d) } \acciaccatura { bf' } \tuplet 3/2 { af8( g f) }
      \acciaccatura { g } \tuplet 3/2 { f( ef d) } |
    \acciaccatura { f8 } \tuplet 3/2 { ef8( d ef  d c d) } \voiceOne
      c4-\slurShapeR (~ c~ |
    \tuplet 3/2 { c8d c~ } c4~ \tuplet 3/2 { c8 d c~ } c4~ |
    \tuplet 3/2 { c8 d cs~  cs e d) } \oneVoice r2\fermata |
    r16 d,16(^\aTempo ef e  f32 fs g a  bf[ b c cs] d2~ |
    \tuplet 3/2 { d8) c( bf } \acciaccatura { d } \tuplet 3/2 { c8 bf a) }
      \acciaccatura { f' } \tuplet 3/2 { ef( d c) } \acciaccatura { d }
      \tuplet 3/2 { c( bf a) } |
    
    \barNumberCheck 41
    \acciaccatura { c8 } \stemDown \tuplet 3/2 { bf( a bf) }
      \acciaccatura { d } \tuplet 3/2 { c( bf a } \stemNeutral g4)
      \grace { fs16( } \afterGrace 15/16 fs4)-\slurShapeS (\trill { e32 fs } |
    g4) \voiceOne \acciaccatura { c'8 } \tuplet 3/2 { bf( a bf~ } bf4)
      \acciaccatura { bf8 } \tuplet 3/2 { a8( g a~ } |
    a4) \acciaccatura { a8 } \tuplet 3/2 { g( fs g~ } g4 fs |
    \oneVoice <g, g'>4) \voiceOne \tuplet 3/2 { bf'8( c d) }
      \acciaccatura { c } \tuplet 3/2 { bf( a g  a bf c) } |
    \acciaccatura { bf8 } 
      \tuplet 3/2 { \osp #'(0 . -0.5) a( g fs  g a bf~  bf a g~  g a fs } |
    g2.) fs4( |
    g1) |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1 |
    s2 r4 s |
    s1 |
    s2 r4 s |
    s1*4 |
    
    \barNumberCheck 9
    s1*2 |
    s2 \acciaccatura { d''8 } \voiceFour \tupletOff
      \tuplet 3/2 { c( bf! a  g fs g } |
    fs4 \tuplet 3/2 { g8 fs g } fs4 \tuplet 3/2 { g8 fs g } |
    fs2) s |
    s1*2 |
    s2 \oneVoice \acciaccatura { a'8 } \voiceFour
      \tuplet 3/2 { g( f ef  d cs d } |
    
    \barNumberCheck 17
    cs4 \tuplet 3/2 { d8 cs d } cs4 \tuplet 3/2 { d8 cs d } |
    cs2) s |
    s1*3 |
    s4 a( g) g( |
    f4) f( \tuplet 3/2 { e8 bf' a  g f e } |
    \parenthesize f4) a g g |
    
    \barNumberCheck 25
    f4 f \tuplet 3/2 { \osp #'(0.5 . 0.5) e8( bf' a  g f e } |
    \tuplet 3/2 { d8 e f  g e d }  f4) e( |
    f1) |
  }
  \repeat volta 2 {
    s1*3 |
    s2 \tuplet 3/2 { f'8( ef d  c b c }  |
    b4 \tuplet 3/2 { c8 b c } b4 \tuplet 3/2 { c8 b c } |
    
    \barNumberCheck 33
    b2) s |
    s1*2 |
    s2 \tuplet 3/2 { c8( bf a  g fs g } |
    fs4 \tuplet 3/2 { g8 fs g } fs4 \tuplet 3/2 { g8 fs g } |
    fs2) s |
    s1*2 |
    
    \barNumberCheck 41
    s1 |
    s4 d'4( c) c( |
    bf4) bf( \tuplet 3/2 { a8 ef'd  c bf a } |
    \hideNoteHead g4) d' c c |
    bf4 bf c a |
    \tuplet 3/2 { g8-\slurShapeT ( a bf  c d ef  d c bf  a g a } |
    g1) |
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    <g, d' g>4\arpeggio r <d a' d>\arpeggio r |
    <g d' g>4\arpeggio r s g |
    \osp #'(2.5 . 0) c4( c') <d, g bf d>( <d a' c>) |
    <g, d' g>4\arpeggio r s g |
    \osp #'(2.5 . 0) c4( c') <d, g bf d>( <d a' c>) |
    \tupletOff \tuplet 3/2 { 
      g,8-\slurShapeD _( bf d  g bf d \clef treble \stemUp g bf d)
        bf(\prall a g) 
    } |
    \clef bass d,,2._( \stemNeutral d'4 |
    \tuplet 3/2 {
      g,8)-\slurShapeE _( bf d  g bf d \clef treble \stemUp g bf d)
        bf(\prall a g) 
    } |
    
    \barNumberCheck 9
    \clef bass d,,2. \stemNeutral d'4_( |
    <g, g'>4 <a fs'> <bf g'>) <b g'>_( |
    <c c'>4 <d b'> <ef c'>) q_( |
    <d c'>4 <ef c'> <d c'> <ef c'> |
    d4 d,) r2\fermata |
    r2 r16 d'-\slurShapeF (\< ef e  f32 fs g a  bf[ b c cs]\! |
    d4 d,) r <fs d'>_( |
    <g d'>4 <a cs> <bf d>) <g g'>_( |
    
    \barNumberCheck 17
    <a g'>4 <bf g'> <a g'> <bf g'> |
    a4 a,) r2\fermata |
    r2 r16 a'(\< bf b  c32 cs d e  f[ fs g gs]\! |
    a4 a,) r <cs, a'>_( |
    <d a'>4) <bf' g'>( <a f'>) <a e'>( |
    <d, d'>4) d,( e) \osp #'(-2.5 . 0) e'_( |
    f,4) f'_( g, a |
    d,4) d( e) e'_( |
    
    \barNumberCheck 25
    f,4) f'_( g, a |
    bf4 g a) a( |
    d,1) |
  }
  \repeat volta 2 {
    <g d' g>4\arpeggio r r q |
    <g d' f>4\arpeggio r r q |
    <ef' g c>4 q_( <d f c'>) <g d'> |
    <c ef g>_( <bf d g>) <af c g'>( <af c f>) |
    \osp #'(0 . -1) <g d' f>4( <af c f> <g d' f> <af c f> |
    
    \barNumberCheck 33
    g4 g,) r2\fermata |
    r2 r16 g'-\slurShapeP (\< af a  bf32 b c d  ef[ d f fs]\! |
    g4 g,) r <b, g'>_( |
    <c g' c>4) <d b' d> <ef g d'>( <ef g c>) |
    <d a' c>_( <ef g c> <d a' c> <ef g c> |
    d4 d,) r2\fermata |
    r2 r16 d'(\< ef e  f32 fs g a  bf[ b c cs]\! |
    d4 d,) r <fs d'>_( |
    
    \barNumberCheck 41
    <g d'>4) <ef c'>_( <d bf' d>) <d a' c>_( |
    g,4) \osp #'(0 . 2.5) g'( a,) \osp #'(0 . 2.5) a'( |
    bf,4) bf'( <c, c'>) <d a' c>_( |
    g,4) g'( a, a' |
    bf,4) bf'( <c, c'>) <d d'>_( |
    <ef d'>)( <ef c'>)_( d d, |
    g1) |
  }
}

dynamics = {
  \override TextScript.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1-\tweak X-offset #0.25 -\tweak Y-offset #0  \f |
    s2.\> s4-\tweak X-offset #0.5 \mf |
    s2. \afterGrace 15/16 s4-\tweak Y-offset #1 \< { s32 s\! } |
    s2.\f\> s4\tweak X-offset #0.5 \mf |
    s2. \afterGrace 15/16 s4-\tweak Y-offset #1 \< { s32 s\! } |
    s1-\tweak Y-offset #0 \f |
    s2 s4\> \tuplet 3/2 { s4 s8\! } |
    s2\p\< \tuplet 3/2 { s4 s8\!  s4\> s8\! } |
    
    \barNumberCheck 9
    s1 |
    s1\mf |
    s1 |
    s1-\tweak Y-offset #-2 \dim
    s8\p s2..^\rall |
    s2\p\< s\mf |
    \tuplet 3/2 { s8-\tweak Y-offset #1 \f s4-\tweak Y-offset #1 \p }
      \grace { s8\cresc } s2. |
    s1\f |
    
    \barNumberCheck 17
    s1\dim |
    s8\p s2..^\rall |
    s2\p\< s\mf |
    \tuplet 3/2 { s8-\tweak Y-offset #1 \f s4-\tweak Y-offset #1 \p }
      \grace { s8\cresc } s2. |
    s1\f |
    s1*2 |
    s4 s8\p s\cresc s2 |
    
    \barNumberCheck 25
    s1*2 |
    s1\f |
  }
  \repeat volta 2 {
    s1\f |
    s1*3 |
    s1\dim |
    
    \barNumberCheck 33
    s8\p s^\rall s2. |
    s2\p\< s\mf |
    \tuplet 3/2 { s8-\tweak Y-offset #1 \f s4-\tweak Y-offset #1 \p }
      \grace { s8\cresc } s2 s4\mf |
    s1 |
    s1-\tweak Y-offset #-1 \dim |
    s8\p s2..^\rall |
    s2\p\< s\mf |
    \tuplet 3/2 { s8\f s4\p } \grace { s8\cresc } s2. |
    
    \barNumberCheck 41
    s1\f |
    s1*2 |
    s4 s8\p s\cresc s2 |
    s1 |
    s1-\tweak Y-offset #-1 \f |
    s1 |
  }
}

pedal = {
  \repeat volta 2 {
    s4\sd s\su s-\tweak Y-offset #-1 \sd s\su |
    s2\sd s\su |
    s1 |
    s2\sd s\su |
    s1 |
    s1\sd |
    s1\su |
    s1\sd |
    
    \barNumberCheck 9
    s1\su |
    s1*7 |
    
    \barNumberCheck 17
    s1*8 |
    
    \barNumberCheck 25 
    s1*3 |
  }
  \repeat volta 2 {
    s2\sd s4\su s\sd |
    s1-\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s\su |
    s1*2 |
    
    \barNumberCheck 33
    s1*8 |
    
    \barNumberCheck 41
    s1*2 |
    s2. s4\sd |
    s1\su |
    s1 |
    s2. s4-\tweak Y-offset #-1 \sd |
    s1\su |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Moderato" 4 = 116
    s1*8 |
    
    \barNumberCheck 9
    s1*4 |
    \set Score.tempoHideNote = ##t
    \tempo 4 = 104 s4 \tempo 4 = 92 s \tempo 4 = 60 s2 |
    \tempo 4 = 116
    s1*3 |
    
    \barNumberCheck 17
    s1 |
    \tempo 4 = 104 s4 \tempo 4 = 92 s \tempo 4 = 60 s2 |
    \tempo 4 = 116
    s1*6 |
    
    \barNumberCheck 25
    s1 |
    s4 \tempo 4 = 108 s \tempo 4 = 100 s \tempo 4 = 92 s |
    \tempo 4 = 84 s1 |
  }
  \repeat volta 2 {
    \tempo 4 = 116
    s1*5 |
    
    \barNumberCheck 33
    \tempo 4 = 104 s4 \tempo 4 = 92 s \tempo 4 = 60 s2 |
    \tempo 4 = 116
    s1*4 |
    \tempo 4 = 104 s4 \tempo 4 = 92 s \tempo 4 = 60 s2 |
    \tempo 4 = 116
    s1*2 |
    
    \barNumberCheck 41
    s1*5 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 4 = 108 s \tempo 4 = 100 s \tempo 4 = 92 s |
          \tempo 4 = 84 s1 |
        }
        {
          s4 \tempo 4 = 104 s \tempo 4 = 92 s \tempo 4 = 80 s |
          \tempo 4 = 60 s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*3 \break
  s1*3 \break
  s1*3 \break
  \grace { s8 } s1*3 \break
  s1*3 \pageBreak
  
  % page 2
  \grace { s8 } s1*3 \break
  s1*2 \break
  \grace { s8 } s1*3 \break
  s1*4 \break
  s1*3 \pageBreak
  
  % page 3
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*4 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
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
