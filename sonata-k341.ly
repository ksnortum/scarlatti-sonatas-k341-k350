%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in A minor"
  opus   = "K.341"
  source = "https://ks15.imslp.org/files/imglnks/usimg/b/b6/IMSLP914822-PMLP526042-E4464_32-33-Scarlatti_-_Keyboard_Sonatas,_L.133-145.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.5 . 0) (0 . -2) (0 . -0.5) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0.5 . 0) (0 . -0.5) (0 . -0.5) (0 . 0))
                        ((0 . 0.5) (0 . 0.5) (-2 . -1) (0 . -2))
                      ) \etc
slurShapeC = \shape #'((0 . 0) (0 . -2) (0 . 0) (0 . 0.5)) \etc
slurShapeD = \shape #'(
                        ((0 . -0.5) (0 . 0.5) (0 . 0) (-0.2 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . -0.5) (-1 . 0.5) (0 . -0.5) (0 . 0)) \etc
slurShapeF = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 1) (0 . 1) (0 . 1))
                      ) \etc
slurShapeH = \shape #'((0 . -2.5) (0 . -2) (-0.3 . 0) (-0.3 . 0)) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0) (-0.3 . 0) (-0.3 . 0)) \etc
slurShapeJ = 
  \shape #'(
    ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
    ((-0.75 . -2.5) (-0.75 . -2.5) (-0.65 . -2.5) (-0.65 . -2.5))
  ) \etc
slurShapeK = \shape #'((0 . 0) (0 . 0) (-0.3 . 0) (-0.3 . 0)) \etc
slurShapeL = \shape #'((0.5 . 0) (0 . -2) (0 . -0.5) (0 . 0)) \etc
slurShapeM = \shape #'((0 . -0.3) (0 . 0) (0 . 0.75) (0 . -1)) \etc
slurShapeN = \shape #'(
                        ((0 . -1) (0 . 1) (0 . 0.5) (0 . 0))
                        ((0 . 1) (0 . 0) (0 . -0.5) (0 . 1.5))
                      ) \etc
slurShapeO = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeP = \shape #'(
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . -.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 3/8
  \key a \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    a''4. |
    c16( a b gs a e |
    f16 d e c d b |
    c16 a d a f' a,) |
    a8-. gs4-\tag layout \prallprall -\tag midi \prall |
    c16( a d b e d |
    f16 d e c d b |
    \stemDown c16 a b d a gs |
    
    \barNumberCheck 9
    \stemNeutral a4.) |
    c16( a d b e c |
    f8-.) e4-\tag layout \prallprall -\tag midi \prall |
    c16( a d b e c |
    f8-.) e4-\tag layout \prallprall -\tag midi \prall |
    c16( a d b e c |
    f16 d g e a c, |
    b8-) c8.(\trill b32  c) |
    
    \barNumberCheck 17
    c8( d4) |
    g16( d e c d a |
    b4.)-\tag layout \prallprall -\tag midi \prall |
    a'16( e f c d a |
    b4.)-\tag layout \prallprall -\tag midi \prall |
    g'16( d e b c g |
    a16 f f' d a' f |
    e16 a g f e d |
    
    \barNumberCheck 25
    c8-.) g'-. g-. |
    g8-. \afterGrace 15/16 f4-\slurShapeA (\trill { e32 f } |
    e8-.) g-. g-. |
    g8-. \afterGrace 15/16 f4-\slurShapeB (\trill { e32 f } |
    e16 a g b, c e |
    d16 a' g c, d b |
    c8-.) g-. g-. |
    g8-. \afterGrace 15/16 f4(\trill { e32 f } |
    
    \barNumberCheck 33
    e8-.) g-. g-. |
    g8-. \afterGrace 15/16 f4_(\trill { e32 f } |
    e16) c'( b a g a' |
    g16 f e d c b) |
    <c c'>4. |
    <c c'>4. |
    <c c'>4. |
    <c c'>16( a' g f e d) |
    
    \barNumberCheck 41
    <c c'>4. |
    <c c'>4. |
    <c c'>4. |
    <c c'>16( a' g f e d |
    c4.) |
  }
  \repeat volta 2 {
    e16( c g' e c' c, |
    b16 c d4) |
    f16( d a' f d' d, |
    
    \barNumberCheck 49
    c16 d e4) |
    e16( b c a b fs |
    gs4.)-\tag layout \prallprall -\tag midi \prall |
    f'16-\slurShapeG ( d e b c a |
    gs4.)-\tag layout \prallprall -\tag midi \prall |
    e'16( b c gs a e |
    f16 d a' f d' a |
    f'16 d e b c a |
    
    \barNumberCheck 57
    gs16 fs e8)d'( |
    c16 b a8) g'( |
    f16 e d8) a'( |
    gs16 fs e8) d'( |
    c16 b a8. g16 |
    f16 e d c b a |
    gs16-.) f'8( e d16~ |
    d16 c8 b16 a gs |
    
    \barNumberCheck 65
    a8-.) e'-. e-. |
    e8-. \afterGrace 15/16 d4-\slurShapeP (\trill { c32 d } |
    c8-.) e-. e-. |
    e8-. \afterGrace 15/16 d4-\slurShapeL (\trill { c32 d } |
    c16) e( gs, b a c |
    b16 f' e d c b) |
    <a a'>4. |
    q4. |
    
    \barNumberCheck 73
    q4. |
    q16( f' e d c b) |
    <a a'>4. |
    q4. |
    q4. |
    q16( f' e d c b |
    a4.) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    \addStaccato {
      a,8 c e |
      a8 b c |
      d8 b gs |
      a8 f d |
    }
    e8-. e'16( d c b |
    \addStaccato {
      a8) b c |
      d8 gs, e |
      a8 d, e |
    }
    
    \barNumberCheck 9
    a16( e c e a,8-.) |
    a'8-. b-. c-. |
    d16( b c a b gs |
    a8-.) b-. c-. |
    d16( b c a b gs |
    \addStaccato {
      a8) b c |
      d8 e f |
    }
    g8-. \osp #'(0 . 2) e( c |
    
    \barNumberCheck 17
    g4 g,8) |
    g'4. |
    \osp #'(-0.5 . 0) g16( g' f e d e |
    f4.) |
    \osp #'(-0.5 . 0) f,16( f' e d c d |
    e4.) |
    f,4.( |
    g4 g,8) |
    
    \barNumberCheck 25
    \osp #'(0 . -1) c'16-.( g' e-. g c,-. g' |
    b,16-. d g,-. d' b-. d |
    c16-. g' e-. g c,-. g' |
    b,16-. d g,-. d' b-. d |
    c8)( d e |
    f8 g g,) |
    c,16-._( g' e-. g c,-. g' |
    b,16-. d g,-. d' b-. d |
    
    \barNumberCheck 33
    c16-. g' e-. g c,-. g' |
    b,16-. d g,-. d' b-. d |
    c8)-\slurShapeC ( d e |
    \stemDown f8 g g,) |
    c16-.-\slurShapeD ( c' e,-. c' c,-. c' |
    f,16-. c' a-. c f,-. c' |
    e,16-. c' c,-. c' e,-. c' |
    f,8-.) g-. g,-. |
    
    \barNumberCheck 41
    c16-.-\slurShapeE ( c' e,-. c' c,-. c' |
    f,16-. c' a-. c f,-. c' |
    e,16-. c' c,-. c' e,-. c' |
    f,8-.) g-. g,-. |
    \stemNeutral c4.-> |
  }
  \repeat volta 2 {
    c'4.( |
    g8. g'16 f e |
    d4.)-\slurShapeF ( |
    
    \barNumberCheck 49
    a8. a'16 gs fs |
    e4.) |
    \osp #'(-0.5 . 0) e,16( e' d c b c |
    d4.) |
    \osp #'(-0.5 . 0) d,16( d' c b a b |
    c4. |
    d4.) |
    d,4.-\slurShapeH _( |
    
    \barNumberCheck 57
    e8. d16 c b |
    <\noDot a) a'>8.-\slurShapeI ( g'16 f e |
    <\noDot d) d'>8.-\slurShapeJ ( c'16 b a |
    <\noDot e) e'>8.-\slurShapeK ( d'16 c b |
    <\noDot a) a'>8.( g'16 f e |
    <d, d'>4.) 
    q8-. <c c'>-. <b b'>-. |
    <a a'>8-. d( e) |
    
    \barNumberCheck 65
    a16-.( e' c-. e a,-. e' |
    gs,16-. b e,-. b' gs-. b |
    a16-. e' c-. e a,-. e' |
    gs,16-. b e,-. b' gs-. b |
    \addStaccato {
      a8)-\slurShapeM ( b c |
      d e e,) |
    }
    a,16-.-\slurShapeN ( a' c,-. a' a,-. a' |
    d,16-. a' f-. a d,-. a' |
    
    \barNumberCheck 73
    c,16-. a' a,-. a' c,-. a' |
    d,8-.) e-. e,-. |
    a16-.-\slurShapeO ( a' c,-. a' a,-. a' |
    d,16-. a' f-. a d,-. a' |
    c,16-. a' a,-. a' c,-. a' |
    d,8-.) e-. e,-. |
    a4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.-\tweak Y-offset #-1 \mf |
    s4.*3 |
    s8 s8.\f\> s16\! |
    s4\p\< s16 s\! |
    s4\> s16 s\! |
    s4. |
    
    \barNumberCheck 9
    s4. |
    s4.\f |
    s8 s8.-\tweak Y-offset #1 \> s16\! |
    s4.\p |
    s8 s8.-\tweak Y-offset #1 \< s16\! |
    s4.\cresc |
    s4. |
    s4.\f |
    
    \barNumberCheck 17
    s4-\tweak Y-offset #-1 \> s8\! |
    s4.-\tweak Y-offset #-1.5 \p |
    s4.-\tweak Y-offset #0.5 \cresc |
    s4.*5 |
    
    \barNumberCheck 25
    s8-\tweak Y-offset #-1.5 \f s4\p |
    s4. |
    s4.\cresc |
    s4.*3 |
    s8\f s4\p |
    s4. |
    
    \barNumberCheck 33
    s4.\cresc |
    s4.*3 |
    s4.\f |
    s4.*2 |
    s16 s\> s8. s16\! |
    
    \barNumberCheck 41
    s4.\p |
    s4. |
    s4-\tweak Y-offset #0.5 \< s16 s\! |
    s4.\f |
    s4. |
  }
  \repeat volta 2 {
    s4.\p |
    s4. |
    s4.-\tweak Y-offset #1 \cresc
    
    \barNumberCheck 49
    s4. |
    s4.\mf |
    s4.*4 |
    s16 s\< s8. s16\! |
    s4. |
    
    \barNumberCheck 57
    s8. s-\tweak Y-offset #1 \cresc |
    s4.*3 |
    s4.\f |
    s4.*3 |
    
    \barNumberCheck 65
    s8 s4\p |
    s4. |
    s4.\cresc |
    s4.*3 |
    s4.-\tweak Y-offset #-1 \f |
    s4. |
    
    \barNumberCheck 73
    s4. |
    s16 s\< s8. s16\! |
    s4.\p |
    s4. |
    s4-\tweak Y-offset #0.5 \< s16 s\! |
    s4.-\tweak Y-offset #-1 \f |
    s4. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 92
    s4.*40 |
    
    \barNumberCheck 41
    s4.*3 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 84 s8 \tempo 4. = 76 s \tempo 4. = 69 s |
    \tempo 4. = 63 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 92
    s4.*3 |
    
    \barNumberCheck 49
    s4.*24 |
    
    \barNumberCheck 73
    s4.*5 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 84 s8 \tempo 4. = 76 s \tempo 4. = 69 s |
          \tempo 4. = 63 s4. |
        }
        {
          \tempo 4. = 80 s8 \tempo 4. = 69 s \tempo 4. = 60 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*7 \break
  s4.*7 \break
  s4.*8 \break
  s4.*7 \break
  s4.*8 \pageBreak
  
  % page 2
  s4.*8 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*6 \break
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
