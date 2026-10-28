%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in F major"
  opus   = "K.349"
  source = "https://s9.imslp.org/files/imglnks/usimg/a/a3/IMSLP915023-PMLP527548-E4466_35-39-Scarlatti_-_Keyboard_Sonatas,_L.161-175.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0.75) (0 . 0))
                      ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0) (0 . -0.5) (0 . 0) (0 . -1)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.3 . 0)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (-0.3 . 1))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . -3) (0 . -3) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0.5) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 3/8
  \key f \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    f'16( e g f a g |
    bf a c bf a g |
    \stemUp a8-.) bf-. c-. |
    \stemNeutral d8-. \osp #'(1 . -0.5) \afterGrace 15/16 e,4(\trill
      { d32 e } |
    \stemDown f16) c'( bf c d c |
    g'16-. bf, a bf c bf |
    a'16-. c, bf c d c |
    g'16-. bf, a bf c bf |
    
    \barNumberCheck 9
    <a c>4.) |
    <bf d>4.( |
    <a c>4. |
    \stemNeutral <g bf>4. |
    <a c>4.) |
    <bf d>4.( |
    <a c>4. |
    <g bf>4.) |
    
    \barNumberCheck 17
    a16( g b a c b |
    d16 c e d f e) |
    g,16( f a b g a |
    c16 b d c e d) |
    f,16( e g f a g |
    b16 a c b e d |
    e8-.) f-. g-. |
    a8-. \afterGrace 15/16 b,4(\trill { a32 b } |
    
    \barNumberCheck 25
    c16 b d c e d |
    f e g f e d |
    c4.) |
    R4. |
    r8 c16-\slurShapeA ( b d c |
    e16 d f e g f |
    af16 g bf af c bf |
    df16 c bf af g df' |
    
    \barNumberCheck 33
    c16 bf af g f ef |
    df16 c bf af g bf |
    \stemDown af16 g bf af c bf |
    df16 c ef df c bf) |
    bf16-\slurShapeB ( a c bf df c |
    ef16 d! f ef d c) |
    c16( b d c ef d |
    f16 ef g f ef d) |
    
    \barNumberCheck 41
    d16-\slurShapeC ( c ef d f ef |
    af16 g f ef d c |
    <b d>4.) |
    <c ef>4.( |
    <b d>4. |
    <c ef>4.) |
    d16-\slurShapeF ( c b a! g f |
    <g) c e!>4. |
    
    \barNumberCheck 49
    <a f' a>4. |
    <g e' g>4. |
    <f d' f>4. |
    <e c' e>4. |
    <a f' a>4. |
    <g e' g>4. |
    <f d' f>4. |
    e'16( d c b c e |
    
    \barNumberCheck 57
    d16 f e d c b |
    c16-.) \osp #'(-0.5 . -0.5) g'16( \bracketAccidental fs? g a g |
    g,16-. f'! e f g f |
    g,16-. e' d e f e |
    \stemNeutral f,16-. d' e,-. c' d,-. b' |
    c16) g'16-\slurShapeG ( \bracketAccidental fs? g a g |
    g,16-. f'! e f g f |
    g,16-. e' d e f e |
    
    \barNumberCheck 65
    f,16-. d' e,-. c' d,-. b' |
    c16 e d f e d |
    c16 g a f d b' |
    c16 e d f e d |
    c4.) | \break
  }
  \repeat volta 2 {
    \osp #'(0 . -1) c16( b d c ef d |
    f ef g f af g |
    c16 bf af g f ef |
    
    \barNumberCheck 73
    d16 c bf af g f |
    g8-.) af-. bf-. |
    c8-. \afterGrace 15/16 d,4->(\trill ^\trillFlat { c32 d } |
    ef16 d f ef g f |
    af g bf af g f) |
    f16( e! g f af g |
    bf af c bf a g) |
    g16( fs a g bf a |
    
    \barNumberCheck 81
    c16 bf d c bf a |
    bf8-.) c-. d-. |
    ef8-. \afterGrace 15/16 fs,4->(\trill { e!32 fs } |
    g16 fs a g bf a |
    c16 bf d c b a) |
    a16( gs b a c b |
    d16 c e d c b) |
    d16( cs e d f e |
    
    \barNumberCheck 89
    g16 f a g f e |
    <d f>4.) |
    <bf cs bf'>4. |
    <a f' a>4. |
    <g e' g>4. |
    <a d f>4. |
    <bf cs bf'>4. |
    <a f' a>4. |
    
    \barNumberCheck 97
    <g e' g>4. |
    f'16( g f ef d c |
    b16 af g f ef d) |
    <g ef' g>4. |
    <b f' af>4. |
    <g ef' g>4. |
    <g d' f>4. |
    <g c ef>4. |
    
    \barNumberCheck 105
    <b f' af>4. |
    <g ef' g>4. |
    <g d' f>4.( |
    <c ef>16) g( af bf) af(\prall g) |
    f'16( af, bf c) bf(\prall af) |
    g'16( bf, c d) c(\prall bf) |
    a'16( c, d ef) d(\prall c) |
    bf'16( d, e! f) e(\prall  d) |
    
    \barNumberCheck 113
    g16( bf, c d) c(\prall bf) |
    a'16( a, b c) b(\prall a) |
    d16( f, g a) g(\prall f) |
    c'16( c, d e) d(\prall c) |
    a'16( f g a) g(\prall f) |
    bf!16( f g a) g(\prall f) |
    c'16( f, g a) g(\prall f) |
    d'16-\slurShapeH ( f, g e' f a, |
    
    \barNumberCheck 121
    bf16 g' a f c bf' |
    <f a>4.) |
    <d bf' d>4. |
    <c a' c>4. |
    <c g' bf>4. |
    <c f a>4. |
    <d bf' d>4. |
    <c a' c>4. |
    
    \barNumberCheck 129
    <c g' bf>4. |
    a'16( g f e f a |
    g16 bf a g f e |
    f16) c'-\slurShapeI ( \bracketAccidental b? c d c |
    c,16-. bf'! a bf c bf |
    c,16-. a' g a bf a |
    bf,16 g' a, f' g, e' |
    f16) c( \bracketAccidental b? c d c |
    
    \barNumberCheck 137
    g'16-. bf,! a bf c bf |
    a'16-. a, bf c bf a |
    d16 bf a g f e |
    f16-.) \osp #'(0 . -1) c'( bf d g, bf |
    a16 c d, f e g |
    f16 c' bf d c bf |
    a16 c d, d' e, e' |
    \override Parentheses.font-size = #-3
    <\parenthesize f, f'>4.->) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R4.*2 |
    f16( e g f a g |
    bf a c bf a g |
    <a c>4.) |
    <e c'>4._( |
    <f c'>4. |
    <e c'>4. |
    
    \barNumberCheck 9
    f16) f'( e f g f |
    bf,16-. f' e f g f) |
    f,16-. f'( e f g f) |
    c,16-. f'( e f g f) |
    f,,16-.\noBeam f''( e f g f |
    bf,16-. f' e f g f) |
    f,16-. f'( e f g f) |
    c,16-. f'( e f g f) |
    
    \barNumberCheck 17
    f,,4. |
    <f' d'>4. |
    <e d'>4.( |
    <e c'>4.) |
    <d c'>4.( |
    <d b'>4.) |
    c16( b d c e d |
    f16 e g f e d |
    
    \barNumberCheck 25
    <c g'>4. |
    <b g'>4.) |
    c,8-.\noBeam c''16-\slurShapeK ( b d c |
    e16 d g e g f |
    af4. |
    g4. |
    f4. |
    ef4. |
    
    \barNumberCheck 33
    \addStaccato {
      a,8) bf c |
      df8 ef ef, |
    }
    <af ef'>4._( |
    <gf ef'>4. |
    <f ef'>4.) |
    <f f'>4. |
    <g! f'>4. |
    <g g'>4. |
    
    \barNumberCheck 41
    <af g'>4. |
    <f f'>_( |
    g16-.) g'-\slurShapeD ( fs g af g |
    c,16-. g' fs g af g |
    g,16-.) g'-\slurShapeE ( fs g af g) |
    c,,16-. g''-\slurShapeE ( fs g af g) |
    g,,4._( |
    c16) c'( b c d c |
    
    \barNumberCheck 49
    f,16-. c' b c d c) |
    c,16-. c'( b c d c) |
    g,16-. c'( b c d c) |
    c,,16-.\noBeam c''( b c d c |
    f,16-. c' b c d c) |
    c,16-. c'( b c d c) |
    g,16-. c'( b c d c) |
    c,,8-. d-. e-. |
    
    \barNumberCheck 57
    f8( g) g-. |
    c,4.-> |
    <b' g'>4._( |
    <c g'>4.) |
    f8-. g-. g,-. |
    <c g'>4._( |
    <b g'>4.) |
    << 
      { \voiceTwo c8( d e | } 
      \new Voice { \voiceThree g4. | } 
    >>
    
    \barNumberCheck 65
    \oneVoice f8 g-. f-.) |
    \addStaccato {
      <e, e'>8 <f f'> <g g'> |
      <e e'>8 <f f'> <g g'> |
      <e e'>8 <f f'> <g g'> |
    }
    <c, c'>4.-> |
  }
  \repeat volta 2 {
    q4. |
    q4. |
    <af' af'>4.( |
    
    \barNumberCheck 73
    <bf bf'>4.) |
    ef16_( d f ef g f |
    af16 g bf af g f |
    <ef bf'>4. |
    <d bf'>4.) |
    <c bf'>4. |
    <c c'>4. |
    <d c'>4. |
    
    \barNumberCheck 81
    <d d'>4._( |
    g16)_( fs a g bf a |
    c16 bf d c bf a |
    <g d'>4. |
    <f d'>4.) |
    <e d'>4. |
    <e e'>4. |
    <a e'>4. |
    
    \barNumberCheck 89
    a,4._( |
    d16-.) d'( cs d e d |
    g,16-. d' cs d e d) |
    d,16-. d'(cs d e d) |
    a,16-. d'( cs d e d) |
    d,,16-.\noBeam d''( cs d e d |
    g,16-. d' cs d e d) |
    d,16-. d'(cs d e d) |
    
    \barNumberCheck 97
    a,16-. d'( cs d e d) |
    d,,4._( |
    g4. |
    c16-.) c'( b c d c |
    f,16-. c' b c d c) |
    c,16-. c'( b c d c) |
    g,16-. c'( b c d c) |
    c,,16-.\noBeam c''( b c d c |
    
    \barNumberCheck 105
    f,16-. c' b c d c) |
    c,16-. c'( b c d c) |
    g,16-. c'( b c d c) |
    c,,4. |
    <d' bf'>4._( |
    <ef bf'>4.) |
    <c a'!>4._( |
    <d bf'>4. |
    
    \barNumberCheck 113
    <e! c'>4. |
    <f c'>4.) |
    <d b'>4._( |
    <e g>4. |
    <f a>4. |
    <d bf'!>4.) |
    <a f'>4._( |
    \addStaccato {
      bf8) bf' a |
      
      \barNumberCheck 121
      e8 f c |
    }
    f16-. f'( e f g f |
    bf,16-. f' e f g f) |
    f,16-. f'( e f g f) |
    c,16-. f'( e f g f) |
    f,,16-.\noBeam f''( e f g f |
    bf,16-. f' e f g f) |
    f,16-. f'( e f g f) |
    
    \barNumberCheck 129
    c,16-. f'( e f g f) |
    f,,8-. g-. a-. |
    bf8( c) c,-. |
    f4.-> |
    <e' c'>4._( |
    <f c'>4.)
    bf8-. c-. c,-. |
    <f c'>4._( |
    
    \barNumberCheck 137
    <e c'>4.) |
    << 
      { \voiceTwo f8-\slurShapeJ ( g a | } 
      \new Voice { \voiceThree c4. | } 
    >>
    \oneVoice bf8 c-.) c,-. |
    \addStaccato {
      f8 bf, c |
      f8 bf, c |
      f8 bf, c |
      f,8 bf c |
    }
    f,4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\p |
    s4.*2 |
    s8 s16-\tweak Y-offset #0.5 -\tag layout \sf -\tag midi \f
      s-\tag midi \p s8 |
    s16 s\p s4 |
    s4.\< |
    s4.\> |
    s4.\! |
    
    \barNumberCheck 9
    s4. |
    s4.-\tweak Y-offset #1 \cresc |
    s4.*2 |
    s16\f s\p s4 |
    s4.-\tweak Y-offset #1 \cresc |
    s4.*2 |
    
    \barNumberCheck 17
    s16\f s\p s4 |
    s4.\cresc |
    s4.*4 |
    s4.\f |
    s4. |
    
    \barNumberCheck 25
    s4.*2 |
    s8 s4\p\cresc |
    s4. |
    s8\f s4\p |
    s4.\cresc |
    s4. |
    s4.\f |
    
    \barNumberCheck 33
    s4.*2 |
    s4.\p |
    s4.\cresc |
    s4.*4 |
    
    \barNumberCheck 41
    s4.*2 |
    s16\f s\p s4 |
    s4.-\tweak Y-offset #1 \cresc |
    s4.*2 |
    s4.\f |
    s4. |
    
    \barNumberCheck 49
    s4.*8 |
    
    \barNumberCheck 57
    s4.*5 |
    s16 s\p s4 |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 65
    s4. |
    s4.\f |
    s4.*3 |
  }
  \repeat volta 2 {
    s16\p s\cresc s4 |
    s4. |
    s4.\f |
    
    \barNumberCheck 73
    s4.*3 |
    s16 s\p s4 |
    s4.\cresc |
    s4.*3 |
    
    \barNumberCheck 81
    s4. |
    s4.\f |
    s4. |
    s16 s\p s4 |
    s4.\cresc |
    s4.*3 |
    
    \barNumberCheck 89
    s4. |
    s4.\f |
    s4.*6 |
    
    \barNumberCheck 97
    s4.*8 |
    
    \barNumberCheck 105
    s4.*3 |
    s16 s\mf s4 |
    s4.*4 |
    
    \barNumberCheck 113
    s4.*7 |
    s4.-\tweak Y-offset #-1 \cresc |
    
    \barNumberCheck 121
    s4. |
    s4.\f |
    s4.*6 |
    
    \barNumberCheck 129
    s4.*7 |
    s16 s\p s4\cresc |
    
    \barNumberCheck 137
    s4.*3 |
    s4.\f |
    s4.*4 |
  }
}

pedal = {
  \repeat volta 2 {
    s4.*8 |
    
    \barNumberCheck 9
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #1 -\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #1 -\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 17
    s4.\su |
    s4.*7 |
    
    \barNumberCheck 25
    s4.*16 |
    
    \barNumberCheck 41
    s4.*2 |
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.\su |
    s4.\sd |
    
    \barNumberCheck 49
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #-1 -\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #2 -\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #2 -\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.\su |
    
    \barNumberCheck 57
    s4.*8 |
    
    \barNumberCheck 65
    s4.*5 |
  }
  \repeat volta 2 {
    s4.*3 |
    
    \barNumberCheck 73
    s4.*16 |
    
    \barNumberCheck 89
    s4. |
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #-1 -\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #-1 -\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 97
    s4.-\tag layout \sd -\tag midi \sud |
    s4.\su |
    s4. |
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 105
    s4.-\tweak Y-offset #2 -\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #2 -\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.\su |
    s4.*4 |
    
    \barNumberCheck 113
    s4.*8 |
    
    \barNumberCheck 121
    s4. |
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #-1 -\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #-1 -\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 129
    s4.-\tweak Y-offset #-0.75 -\tag layout \sd -\tag midi \sud |
    s4.\su |
    s4.*6 |
    
    \barNumberCheck 137
    s4.*8 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 96
    s4.*64 |
    
    \barNumberCheck 65
    s4.*3 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 88 s8 \tempo 4. = 80 s \tempo 4. = 72 s |
    \tempo 4. = 66 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 96
    s4.*3 |
    
    \barNumberCheck 73
    s4.*64 |
    
    \barNumberCheck 137
    s4.*6 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 88 s8 \tempo 4. = 80 s \tempo 4. = 72 s |
          \tempo 4. = 66 s4. |
        }
        {
          \tempo 4. = 84 s8 \tempo 4. = 72 s \tempo 4. = 63 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*5 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*5 \pageBreak
  
  % page 2
  s4.*6 \break
  s4.*6 \break
  s4.*5 \break
  s4.*6 \break
  s4.*6 \pageBreak
  
  % page 3
  s4.*6 \break
  s4.*6 \break
  s4.*5 \break
  s4.*5 \break
  s4.*5 \pageBreak
  
  % page 4
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \pageBreak
  
  % page 5
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
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
