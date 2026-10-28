%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in D major"
  opus   = "K.345"
  source = "https://ks15.imslp.org/files/imglnks/usimg/a/a2/IMSLP914551-PMLP526650-E4523_24-28-Scarlatti_-_Keyboard_Sonatas,_L.301-315.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0.5) (0 . 0.5) (0 . -0.5))
                      ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . -1))
                      ) \etc
slurShapeD = \shape #'((-0.3 . 0.3) (-0.3 . 0) (-0.3 . 0) (-0.3 . 0)) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'((0.4 . 0) (0.4 . 0) (0 . 0) (0 . 0)) \etc
slurShapeG = \shape #'((0.4 . 0) (0.4 . 0) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 2.5) (0 . 2.5) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 1) (0 . 0) (0 . 0))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . 2.5) (0 . 2) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeN = \shape #'((0 . -1.5) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeO = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . 0)) \etc
slurShapeP = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeQ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0.5) (0 . 0.5) (0 . 0))
                      ) \etc
slurShapeR = \shape #'(
                        ((0 . -1) (4 . 1) (0 . 1) (0 . 0))
                        ((0.3 . 0) (0.3 . 0.5) (0 . 0.5) (0 . -1))
                      ) \etc
slurShapeS = \shape #'((0.5 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeT = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -0.75))
                      ) \etc
slurShapeU = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeV = \shape #'(
                        ((0 . -2) (0 . 2) (0 . 2) (0 . 0))
                        ((0.3 . 2.7) (0.3 . 2.7) (0 . 2.7) (0 . 2.7))
                      ) \etc
slurShapeW = \shape #'(
                        ((0 . -0.75) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeX = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc

tieShapeA = \shape #'((-0.5 . 0.3) (-0.5 . 0.5) (0.5 . 0.5) (0.5 . 0.3)) \etc
tieShapeB = 
  \shape #'((-0.5 . -0.3) (-0.5 . -0.5) (0.5 . -0.5) (0.5 . -0.3)) \etc

%
% Music
%

global = {
  \time 2/2
  \key d \major
  \override Timing.TimeSignature.style = #'numbered
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    d''2( a |
    d4) fs8( g)  a4-. g-. |
    \addStaccato { fs4 e d e } |
    a,4-. fs'8( g)  a4-. g-. |
    \addStaccato { fs4 e d e } |
    a,2-\tag layout \prallprall -\tag midi \prall <a a'> |
    q2 q |
    q2 q |
    
    \barNumberCheck 9
    << { a'4( fs) } \\ { a,2 } >> a'4( g8 fs |
    e2)-\tag layout \prallprall -\tag midi \prall <a, a'> |
    q2 q |
    q2 q |
    << { a'4( fs) } \\ { a,2 } >> a'4( g8 fs |
    e2)-\tag layout \prallprall -\tag midi \prall a,8-\slurShapeB ( cs b d |
    cs8 e d fs  e g fs a |
    b,2) b8-\slurShapeC ( d cs e |
    
    \barNumberCheck 17
    d8 fs e g  fs a g b |
    a,2) a'8( fs g e |
    fs d e cs  d b cs a |
    b8 g a fs  g e d' d,) |
    <d fs>2 \grace { e8-\slurShapeD ( } \afterGrace 15/16 <cs e)>2(\trill
      { d16 e } |
    d2) a'8( fs b a) |
    a4( g)  e'8( g, a e) |
    e4( fs)  a8( fs b a) |
    
    \barNumberCheck 25
    a4( g)  e'8( g, a e) |
    e4( fs) b8( g c b) |
    \stemUp b4( a) \stemNeutral fs'8( a, b fs) |
    fs4( g) b8( g c b) |
    \stemUp b4( a) \stemNeutral fs'8( a, b fs) |
    fs4( g)  g'8( fs g e |
    fs4 g)  g8( fs g e |
    fs4 g) b( g |
    
    \barNumberCheck 33
    e4 cs) \grace { g8( } \afterGrace 15/16 g2)-\slurShapeF (\trill
      { a16 g } |
    fs2) a'8( gs a fs |
    gs4 a)  a8( gs a fs |
    gs4 a) cs( a |
    fs4 ds) \grace { a8( } \afterGrace 15/16 a2)-\slurShapeG (\trill
      { b16 a } |
    gs2) <e e'> |
    q2 q |
    q2 q |
    
    \barNumberCheck 41
    << { e'4( cs) } \\ { e,2 } >> e'4-\slurShapeH ( d8 cs |
    b2)-\tag layout \prallprall -\tag midi \prall <e, e'> |
    q2 q |
    q2 q |
    << { e'4( cs) } \\ { e,2 } >> e'4( d8 cs |
    b2)-\tag layout \prallprall -\tag midi \prall gs8-\slurShapeI ( b a cs |
    b4-.) gs'2( a8 b |
    a4-.) a,-. gs8( b a cs |
    
    \barNumberCheck 49
    b4-.) gs'2( a8 b |
    a4-.) cs8-\slurShapeK ( b  a gs fs e |
    d8 cs b a  gs fs e d |
    cs2)\prall cs'8( d e a,) |
    a4( \stemUp b) \stemNeutral  b8( cs d gs,) |
    gs4( a)  \osp #'(0 . -1) cs8( d e a, |
    fs'8 gs a a,  gs' a b gs) |
    gs4( a)  cs,8( d e a,) |
    
    \barNumberCheck 57
    a4( \stemUp b) \stemNeutral b8( cs d gs,) |
    gs4( a)  cs8( d e a, |
    fs'8 gs a a,  gs' a b gs |
    a8 gs a e)  a-\slurShapeX ( gs fs e |
    e8 d e fs  e d cs b |
    b4 cs)  a'8( gs fs e |
    e8 d e fs  e d cs b |
    cs8) a-\slurShapeN ( cs e  a gs fs e |
    
    \barNumberCheck 65
    fs8 gs a d,  cs a' b, gs' |
    \alternative {
      { a1) | }
      { a2-\tieShapeA \repeatTie }
    }
  }
  \repeat volta 2 {
    a8( e fs cs) |
    cs4( d)  b'8( d, e b) |
    b4( cs)  a'8( e fs cs) |
    cs4( d)  b'8( d, e b) |
    b4( cs)  a'8( cs, d a) |
    a4( \stemUp b) \stemNeutral \osp #'(0 . 2.5) g'8( b, cs b |
    
    \barNumberCheck 73
    as4-.) b( cs d |
    e8 d e cs  d cs d b |
    cs2)-\tag layout \prallprall -\tag midi \prall <fs, fs'> |
    q2 e'4-\slurShapeO \( d8 cs |
    \grace { e16( } d4)\trill cs\)  <fs, fs'>2 |
    q2 e'4( d8 cs |
    d4 cs8 b)  d-\slurShapeP ( cs d b |
    cs4 d)  d8( cs d b |
    
    \barNumberCheck 81
    cs4 d)  d8( cs d b) |
    b4( cs)  d8( cs d b) |
    b4( cs)  <a a'>2 |
    q2 q |
    << { a'4( g) } \\ { b,2 } >> <b g'>2 |
    q2 q |
    << 
      { \voiceOne g'4-\slurShapeR ( fs8 e } 
      \new Voice { \voiceFour a,2 } 
    >>
    \oneVoice d8 cs b a |
    b8 d cs e  d fs g e |
    
    \barNumberCheck 89
    d2) \afterGrace 15/16 e2-\slurShapeS (\trill { d16 e } |
    d2) <fs d'>2 |
    q2 q |
    << { d'4( cs) } \\ { e,2 } >> <e cs'>2 |
    q2 q |
    << { cs'4( b) } \\ { d,2 } >> <d b'>2 |
    q2 q |
    << { b'4( a) } \\ { cs,2 } >> <a a'>2 |
    
    \barNumberCheck 97
    q2 q |
    q2 q |
    << { a'4( fs) } \\ { a,2 } >> a'4( g8 fs |
    e2)-\tag layout \prallprall -\tag midi \prall <a, a'> |
    q2 q |
    q2 q |
    << { a'4( fs) } \\ { a,2 } >> a'4( g8 fs |
    e2)-\tag layout \prallprall -\tag midi \prall cs8( d e a,) |
    
    \barNumberCheck 105
    a4( \stemUp b) \stemNeutral \osp #'(0 . -1) b8( cs d g,) |
    g4( a)  fs'8( g a d,) |
    d4( e)  e8( fs g cs,) |
    cs4( d)  \osp #'(0 . -2) fs8( g a d, |
    g8 a b d,  a' b cs e, |
    d'8 a fs d)  d'( cs b a |
    a8 g a b  a g fs e |
    fs8) d-\slurShapeV ( fs a  d cs b a |
    
    \barNumberCheck 113
    a8 g a b  a g fs e |
    fs8 e d cs  d cs b a |
    a8 g a b  a g fs e |
    fs8) d( fs a  d cs b a |
    a8 g a b  a g fs e |
    fs8 e d cs  d cs b a) |
    b'8( cs d e  fs, d' e, cs' |
    d2)
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R1*5 |
    r2 a,8-\slurShapeA ( cs b d |
    cs8 e d fs  e g fs a |
    g8 b a cs  b d cs e |
    
    \barNumberCheck 9
    d2) fs4( e8 d |
    a2) a,8( cs b d |
    cs8 e d fs  e g fs a |
    g8 b a cs  b d cs e |
    d2) fs4( e8 d |
    a2) a |
    a2 a |
    <a b>_( <g b>) |
    
    \barNumberCheck 17
    q2 q |
    <g a>2_( <fs a>) |
    q2 q |
    <g b>2 q |
    a2-\slurShapeE ( a, |
    d2) d'( |
    <d e>2) <cs e>( |
    d2) d( |
    
    \barNumberCheck 25
    <d e>2) <cs e>( |
    d2) \clef treble e( |
    <e fs>2) <ds fs>( |
    e2) e( |
    <e fs>2) <ds fs>( |
    e2) e( |
    c2) c( |
    b2) b( |
    
    \barNumberCheck 33
    cs!2) cs( |
    d2) fs( |
    d2) d( |
    cs2) cs( |
    ds2) ds( |
    e2) \clef bass e,,8( gs fs a |
    gs8 b a cs  b d cs e |
    d8 fs e gs  fs a gs b |
    
    \barNumberCheck 41
    a2) cs4( b8 a |
    e2) e,8( gs fs a |
    gs8 b a cs  b d cs e |
    d8 fs e gs  fs a gs b |
    a2) cs4( b8 a |
    e2) e' |
    e2( d |
    cs2) e |
    
    \barNumberCheck 49
    e2( d |
    cs2) cs,-\slurShapeJ ( |
    d2 e |
    a2) \osp #'(0 . 1) fs( |
    d2 b |
    cs2) \osp #'(0.5 . 0.5) cs( 
    d2 b |
    a2) fs'-\slurShapeL ( |
    
    \barNumberCheck 57
    d2 b |
    cs2) \osp #'(0.5 . 0.5) cs( |
    d2 b |
    cs2) cs-\slurShapeM ( |
    d2 e |
    a2) \osp #'(2.5 . 0) cs,( |
    d2 e |
    a2) \osp #'(2 . 0) cs,( |
    
    \barNumberCheck 65
    d2 e |
    \alternative {
      { a,1) | }
      { a2-\tieShapeB _\repeatTie }
    }
  }
  \repeat volta 2 {
    \clef treble a''2( |
    <a b>2) gs( |
    a2) a( |
    <a b>2) g!( |
    <g a>2) fs( |
    <fs g>2) e |
    
    \barNumberCheck 73
    e8_( fs d e  cs d b cs |
    \clef bass as2 b |
    fs2) fs8( as gs b |
    as8 cs b d  cs4-.) as( |
    b4 fs)  fs8( as gs b |
    as8 cs b d  cs4-.) fs,( |
    b2) \clef treble g'! |
    << { a2 } \\ { g4( fs) } >> g2 |
    
    \barNumberCheck 81
    << { a2 } \\ { g4( fs) } >> gs2( |
    a2) gs( |
    a2) \clef bass a,,8-\slurShapeQ ( cs b d |
    cs8 e d fs  e g! fs a |
    g2) g,8( b a cs |
    b8 d cs e  d fs e g |
    fs2) fs( |
    g2) g( |
    
    \barNumberCheck 89
    a2 a, |
    d2) d8( fs e g |
    fs8 a g b  a cs b d |
    cs2) cs,8-\slurShapeT ( e d fs |
    e8 g fs a  g b a cs |
    b2) b,8( d cs e |
    d8 fs e g  fs a g b |
    a2) a,8( cs b d |
    
    \barNumberCheck 97
    cs8 e d fs  e g fs a |
    g8 b a cs  b d cs e |
    d2) fs4( e8 d |
    a2) a,8( cs b d |
    cs8 e d fs  e g fs a |
    g8 b a cs  b d cs e |
    d2) fs4( e8 d |
    a2) a( |
    
    \barNumberCheck 105
    <a b>2) <g b>( |
    <g a>2) <fs a>( |
    <g b>2) <e g>( |
    <fs a>2) q( |
    <g b>2) <e g>( |
    <fs a>2) q( |
    <g b>2) <cs, a'>\slurShapeU _( |
    <d a'>2) <fs a>( |
    
    \barNumberCheck 113
    <g b>2) <cs, a'>_( |
    <d a'>2) d-\slurShapeW ( |
    cs2 a |
    d2) d( |
    cs2 a |
    d2) <fs, fs'> |
    <g g'>2 <a a'> |
    <d, d'>2
  } 
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\f |
    s1*2 |
    s4 s2.\p |
    s1 |
    s2 s\cresc |
    s1*2 |
    
    \barNumberCheck 9
    s1-\tweak X-offset #0.5 \f |
    s2 s-\tweak Y-offset #-2 \p |
    s1*2 |
    s1-\tweak X-offset #0.5 -\tweak Y-offset #1 \f |
    s2 s\< |
    s2.. s8\! |
    s2\p s\< |
    
    \barNumberCheck 17
    s2.. s8\! |
    s2\p s\cresc |
    s1*2 |
    s1\f |
    s2 s\p |
    s2 s\f |
    s4\> s\! s2\p |
    
    \barNumberCheck 25
    s2 s\f |
    s4\> s\! s2\p |
    s4\> s\! s2\f |
    s4\> s\! s2\p |
    s4\> s\! s2\f |
    s4\> s\! s2\p\cresc |
    s1 |
    s2 s\mf |
    
    \barNumberCheck 33
    s1 |
    s2 s\p\cresc |
    s1 |
    s2 s\f |
    s1 |
    s2 s\p\cresc |
    s1*2 |
    
    \barNumberCheck 41
    s1\f |
    s2 s\p\cresc |
    s1*2 |
    s1-\tweak X-offset #0.5 \f |
    s2 s-\tweak Y-offset #0.5 \p |
    s4 s2.\f |
    s2 s-\tweak Y-offset #-1 \p |
    
    \barNumberCheck 49
    s4 s2.\f |
    s1*2 |
    s2 s\p |
    s1 |
    s2 s\cresc |
    s1 |
    s4\f\> s\! s2\p |
    
    \barNumberCheck 57
    s1 |
    s2 s\cresc |
    s1 |
    s1\f |
    s1 s2 s\p |
    s1 |
    s1\cresc |
    
    \barNumberCheck 65
    s1 |
    \alternative {
      { s1\f | }
      { s2\f }
    }
  }
  \repeat volta 2 {
    s2\p |
    s2 s\mf |
    s4\> s\! s2\p |
    s2 s\mf |
    s4\> s\! s2\mf |
    s4\> s\! s2\mf |
    
    \barNumberCheck 73
    s4 s2.\p\cresc |
    s1 |
    s2\mf s\cresc |
    s1 |
    s4\f\> s\! s2\p\cresc |
    s1 |
    s4.\f\> s8\! s2\p |
    s4\> s2.\! |
    
    \barNumberCheck 81
    s4\> s\! s2\mf |
    s4\> s2.\! |
    s4\> s\! s2\p\cresc |
    s1 |
    s4\mf\> s\! s2\p\cresc |
    s1 |
    s1\mf |
    s1 |
    
    \barNumberCheck 89
    s2 s\f |
    s2 s\p\cresc |
    s1 |
    s4\f\> s\! s2\p\cresc |
    s1 |
    s4\f\> s\! s2\p\cresc |
    s1 |
    s4\f\> s\! s2\p\cresc |
    
    \barNumberCheck 97
    s1*2 |
    s1-\tweak X-offset #0.5 -\tweak Y-offset #0 \f |
    s2 s\p\cresc |
    s1*2 |
    s1-\tweak Y-offset #0 \f |
    s2 s\p |
    
    \barNumberCheck 105
    s1 |
    s2 s\mf |
    s1 |
    \override DynamicLineSpanner.Y-offset = #0.5
    s2 s\p\cresc |
    s1 |
    s1\f |
    s1 |
    s8 s2..\p |
    
    \barNumberCheck 113
    s1 |
    s1\cresc |
    s1 |
    s8\f s2..\p\cresc |
    s1*2 |
    s1\f |
    s2
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 116
    s1*64 |
    
    \barNumberCheck 65
    \set Score.tempoHideNote = ##t
    s4 \tempo 2 = 108 s \tempo 2 = 100 s \tempo 2 = 92 s |
    \alternative {
      { \tempo 2 = 84 s1 | }
      { \tempo 2 = 84 s2 }
    }
  }
  \repeat volta 2 {
    \tempo 2 = 116
    s2 |
    s1*5 |
    
    \barNumberCheck 73
    s1*40 |
    
    \barNumberCheck 113
    s1*6 |
    \tag layout { s1 | s2 }
    \tag midi {
      \alternative {
        {
          s4 \tempo 2 = 108 s \tempo 2 = 100 s \tempo 2 = 92 s |
          \tempo 2 = 84 s2
        }
        {
          s4 \tempo 2 = 104 s \tempo 2 = 92 s \tempo 2 = 80 s |
          \tempo 2 = 30 s2
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*6 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 2
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 3
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*4 \pageBreak
  
  % page 4
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 5
  s1*5 \break
  s1*5 \break
  s1*4 \break
  s1*4 \break
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
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
