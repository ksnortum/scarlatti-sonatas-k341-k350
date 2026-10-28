%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in F major"
  opus   = "K.350"
  source = "https://ks15.imslp.org/files/imglnks/usimg/7/71/IMSLP914733-PMLP527768-E4485_42-44-Scarlatti_-_Keyboard_Sonatas,_L.221-232.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.3)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.3))
                      ) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.3)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.2))
                        ((0 . 1) (0 . -1) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((0 . 2) (0 . 1.5) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'((0 . -0.5) (0 . 1) (0 . 0.25) (0 . 0)) \etc
slurShapeH = \shape #'(
                        ((0 . -0.5) (0 . 0) (0 . 0.5) (0 . 0.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'((0 . -0.5) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0 . -1) (0 . 0.5) (0 . 0.5) (0 . 0.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'((0 . 0) (0 . 0.5) (0 . 0.) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeM = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeN = \shape #'((0 . 0) (0 . 0.5) (0 . 1) (0 . 0)) \etc
slurShapeO = \shape #'(
                        ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeP = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -2) (3 . 1) (0 . 0) (0 . 0))
                      ) \etc
slurShapeQ = \shape #'(
                        ((0 . 2) (0 . 1.5) (0 . 0) (0 . -1))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 6/8
  \key f \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    f'8( a c f4.) |
    a,8( c f a4.) |
    c,8( f a  c4 bf8 |
    a8 g f)  c'4( bf8 |
    a8 g f)  c'4( bf8 |
    a8 f d b4.) |
    g'8( e c a4.) |
    f'8( d b g4.) |
    
    \barNumberCheck 9
    e'8( c g e4.) |
    c8( fs a c4.) |
    f,!8( b d f4.) |
    c8( fs a c4.) |
    \osp #'(-0.5 . 0) b8( g d  e f! g~ |
    \voiceOne g8 f e) \oneVoice e-\slurShapeA ( d c |
    d4.~ d4) <c e>8-\slurShapeB ( |
    <b d>4.~ q4) <c e>8-\slurShapeC ( |
    
    \barNumberCheck 17
    <b d>4.~ q4) <c e>8( |
    <b d>4. <c e> |
    a8) <f' a>-\slurShapeB ( <e g>  <d f> <c e> <b d> |
    <c e>8 <d f> <e g>~  <a, g'> <d f> <c e> |
    <b d>4.~ q4) <c e>8-\slurShapeC ( |
    <b d>4.~ q4) <c e>8-\slurShapeC ( |
    <b d>4.~ q4) <c e>8( |
    <b d>4. <c e> |
    
    \barNumberCheck 25
    a8) <f' a>-\slurShapeD ( <e g>  <d f> <c e> <b d> |
    c8 g e' \voiceOne g4 f8 |
    \oneVoice e8 d c) \voiceOne \osp #'(0 . -1) g'4( f8 |
    \oneVoice e8 d c) \voiceOne g'4-\slurShapeE ( f8 |
    e8 f g \oneVoice f e d) |
    \voiceOne c'4.~ c4 b8-. |
    c4.~ c4 b8-. |
    \oneVoice c8( g f \voiceOne e f) d-. |
    
    \barNumberCheck 33
    \oneVoice c8^( g f \voiceOne e f) d-. |
    % First and second endings according to an urtext
    \alternative {
      { \oneVoice c4.-> r4 r8 | }
      { 
        \once \override Score.VoltaBracket.musical-length = \musicLength 2.
        \repeat volta 2 {
          c4.-> g''4( f8 |
          ef8 d c) g'4( f8 |
          ef8 d c) \voiceOne bf'4( af8 |
          \oneVoice g8 f ef) \voiceOne bf'4( af8 |
          \oneVoice g8 f ef) \voiceOne c'4-\slurShapeF ( bf8 |
          \oneVoice af8 g f) \voiceOne c'4( bf8 |
          
          \barNumberCheck 41
          \oneVoice af8 g f) \voiceOne d'4( c8 |
          \oneVoice bf8 a! g) \voiceOne d'4( c8 |
          \oneVoice <d, bf'>4.~ q4) <ef c'>8( |
          <d bf'>4.~ q4) \osp #'(0 . 0.5) <ef c'>8( |
          \voiceOne bf'4.~ bf8 a bf |
          \oneVoice <fs a>4.~ q4) \osp #'(0 . 0.5) <g bf>8( |
          <fs a>4.~ q4) <g bf>8( |
          <fs a>4.) <d g bf>-> |
          
          \barNumberCheck 49
          <c ef c'>4.-> <d d'>-> |
          \voiceOne \osp #'(0 . -1) c'4( bf8 \oneVoice a g f) |
          \voiceOne c'4-\slurShapeO ( bf8 \oneVoice a g f |
          <e g>4.~ q4) <f a>8( |
          <e g>4.~ q4) <f a>8( |
          <e g>4. <f a> |
          d8) <bf' d>-\slurShapeP ( <a c>  <g bf> <f a> <e g> |
          \voiceOne a8 bf c~ \oneVoice <d, c'> <g bf> <f a> |
          
          \barNumberCheck 57
          <e g>4.~ q4) <f a>8( |
          <e g>4.~ q4) <f a>8( |
          <e g>4. <f a> |
          d8) \osp #'(0 . -1.5) <bf' d>( <a c>  <g bf> <f a> <e g> |
          f8 c a' \voiceOne c4 bf8 |
          \oneVoice a8 g f) \voiceOne \osp #'(0 . -1) c'4( bf8 |
          \oneVoice a8 g f) \voiceOne c'4-\slurShapeQ ( bf8 |
          \oneVoice a8 g f  g f e |
          
          \barNumberCheck 65
          \voiceOne f4.~ f4) e8-. |
          f4.~ f4 e8-. |
          \oneVoice f8( c bf \voiceOne a bf) g-. |
          \oneVoice f4.-> r4 r8 |
        }
      }
    }
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s2.*8 |
    
    \barNumberCheck 9
    s2.*5 |
    \voiceFour a'4. s |
    s2.*2 |
    
    \barNumberCheck 17
    s2.*8 |
    
    \barNumberCheck 25
    s2. |
    s4. g |
    s4. g |
    s4. g |
    c4. s |
    c'8( g f  e f) d-. |
    c'8( g f  e f) d-. |
    s4. c4 b8-. |
    
    \barNumberCheck 33
    s4. c,4 b8-. |
    \alternative {
      { s2. | }
      {
        \repeat volta 2 {
          s2.*2 |
          s4. bf' |
          s4. bf |
          s4. c |
          s4. c |
          
          \barNumberCheck 41
          s4. d |
          s4. d |
          s2.*2 |
          d4.~ d4 g8 |
          s2.*3 |
          
          \barNumberCheck 49
          s2. |
          c,4. s |
          c4. s |
          s2.*4 |
          f4. s |
          
          \barNumberCheck 57
          s2.*4 |
          s4. c4. |
          s4. c4. |
          s4. c4. |
          s2. |
          
          \barNumberCheck 65
          f8( c bf  a bf) g-. |
          f'8( c bf  a bf) g-. |
          s4. f4 e8-. |
          s2. |
        }
      }
    }
  }
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    r4 r8 f( a c |
    f4.) a,8( c f |
    a4.) c,,8( c' e |
    f4.) c,8( c' e |
    f4.) c,8( c' e |
    f4.) f8( d b |
    e,4.) e'8( c a |
    d,4.) d'8( b g |
    
    \barNumberCheck 9
    c,4.) c'8( e, c |
    a4.) a'8( fs a,) |
    g4.( g'8 d g, |
    a4.) a'8( fs a,) |
    g4.( c |
    f4. a |
    g8-.) g'( e  c a fs |
    g,8-.)\noBeam g''( e  c a fs |
    
    \barNumberCheck 17
    g,8-.)\noBeam g''( e  c a fs |
    g,8-.) b'( d)  c,,-.\noBeam c''( e) |
    f,,4.( g |
    c,4. f |
    g8-.)\noBeam g''( e  c a fs |
    g,8-.)\noBeam g''( e  c a fs |
    g,8-.)\noBeam g''( e  c a fs |
    g,8-.) b'( d)  c,,-.\noBeam c''( e) |
    
    \barNumberCheck 25
    f,,4.( g |
    c,4.) g'8-\slurShapeG ( g' b |
    c4.) g,8-\slurShapeG ( g' b |
    c4.) g,8-\slurShapeG ( g' b |
    c4) c,8-. f4( g8 |
    e4 f8 g4 f8 |
    e4 f8 g4 f8 |
    e4 f8 g4) f8-. |
    
    \barNumberCheck 33
    e4( f8 g4) g,8-. |
    \alternative {
      { c,4.-> r4 r8 | }
      {
        \repeat volta 2 {
          c4.-> g'8-\slurShapeH ( g' b |
          c4.) g,8-\slurShapeI ( g' b |
          c4.) \osp #'(-1 . 0) bf,!8( bf' d |
          ef4.) \osp #'(-1 . 0) bf,8( bf' d |
          ef4.) c,8-\slurShapeJ ( c' e |
          f4.) \osp #'(-1.5 . 0) c,8( c' e |
          
          \barNumberCheck 41
          f4.) d,8-\slurShapeK ( d' fs |
          g4.) d,8-\slurShapeL ( d' fs |
          g,8-.) g'( ef  c a fs |
          g8-.) g'-\slurShapeM ( ef  c a fs |
          g,8) d''-\slurShapeN ( bf  g e! cs |
          d,8-.)\noBeam d''-\slurShapeN ( bf  g e cs |
          d,8-.)\noBeam d''( bf  g e cs) |
          d,8->( d' fs)  g,->( g' bf) |
          
          \barNumberCheck 49
          a,8->( a' c)  bf,->( bf' d) |
          c,8( c' e f4.) |
          c,8( c' e f4.) |
          \osp #'(-1.5 . -1.5) c,8( c' a  f d b |
          c8-.) \osp #'(0 . 2.5) c'( a  f d b |
          c,8-.)\noBeam c''( e) f,,-.\noBeam f''( a) |
          bf,,!4._( c |
          f4. bf, |
          
          \barNumberCheck 57
          c8-.) c'( a  f d b |
          c8-.) \osp #'(0 . 2.5) c'( a  f d b |
          c,8-.)\noBeam c''( e) f,,-.\noBeam f''( a) |
          bf,,!4.( c |
          f,4.) \osp #'(-1.5 . 0) c'8( c' e |
          f4.) c,,8-.\noBeam c''( e |
          f4.) c,,8-.\noBeam c''( e) |
          f,8_( g a  bf,4 c8 |
          
          \barNumberCheck 65
          a4 bf8 c4 bf8 |
          a4 bf8 c4 bf8 |
          a4 bf8 c4) c,8-. |
          f4.-> r4 r8 |
        }
      }
    }
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.-\tweak Y-offset #-2 \p s-\tweak Y-offset #-1 \cresc |
    s2. |
    s4.\< s\f |
    s4.\> s\f |
    s4.\> s\f |
    s4.\> s\p |
    s2.*2 |
    
    \barNumberCheck 9
    s2.*2 |
    s2.-\tweak Y-offset #-1.5 \cresc |
    s2. |
    s2.-\tweak Y-offset #-2 \f |
    s2. |
    s8 s4\p s4.\cresc |
    s2. |
    
    \barNumberCheck 17
    s2. |
    s2.\f |
    s2. |
    s4\< s8\! s4\> s8\! |
    s8\p s4\cresc s4. |
    s2.*2 |
    s2.-\tweak Y-offset #-2 \f |
    
    \barNumberCheck 25
    s2. |
    s2.-\tweak Y-offset #-1.5 \f |
    s2.*6 |
    
    \barNumberCheck 33
    s2. |
    \alternative {
      { s2. | }
      {
        \repeat volta 2 {
          s4.-\tweak Y-offset #-1 \f s\mf |
          s2. |
          s4. s-\tweak Y-offset #0.5 \cresc |
          s2. |
          s4. s\f |
          s2. |
          
          \barNumberCheck 41
          s2.*2 |
          s8 s4\mf s s8-\tag layout \sf -\tag midi \ff |
          s4.-\tag midi \mf s4 s8-\tag layout \sf -\tag midi \ff |
          s2.-\tag midi \mf |
          s8 s4-\tweak Y-offset #0.5 \p-\tweak Y-offset #1 \cresc s4. |
          s2. |
          s4. s-\tweak Y-offset #0 \f |
          
          \barNumberCheck 49
          s2.*3 |
          s8 s4-\tweak Y-offset #1 \p-\tweak Y-offset #1.5 \cresc s4. |
          s2. |
          s2.\f |
          s2. |
          s4\< s8\! s4\> s8\! |
          
          \barNumberCheck 57
          s8 s4-\tweak Y-offset #1 \p-\tweak Y-offset #1.5 \cresc s4. |
          s2. |
          s2.\f |
          s2.*5 |
          
          \barNumberCheck 65
          s2.*4 |
        }
      }
    }
  }
}

pedal = {
  \repeat volta 2 {
    s4. s\sd |
    s2. |
    s4. s-\tag layout \sd -\tag midi \sud |
    s4.\su s\sd |
    s4.\su s\sd |
    s2.\su |
    s2.*2 |
    
    \barNumberCheck 9
    s2. |
    s2.\sd |
    s2.-\tag layout \sd -\tag midi \sud |
    s2.-\tag layout \sd -\tag midi \sud |
    s2.\su |
    s2.*3 |
    
    \barNumberCheck 17
    s2.*16 |
    
    \barNumberCheck 33
    s2. |
    \alternative {
      { s2. | }
      {
        \repeat volta 2 {
          s4. s\sd |
          s4.\su s-\tweak Y-offset #-2 \sd |
          s4.\su s-\tweak Y-offset #-1 \sd |
          s4.\su s-\tweak Y-offset #-1 \sd |
          s4.\su s-\tweak Y-offset #-1 \sd |
          s4.\su s-\tweak Y-offset #-0.5 \sd |
          
          \barNumberCheck 41
          s4.\su s-\tweak Y-offset #-0.5 \sd |
          s4.\su s-\tweak Y-offset #-0.5 \sd |
          s2.\su |
          s2.*5 |
          
          \barNumberCheck 49
          s2. |
          s4.-\tweak Y-offset #-0.5 \sd s\su |
          s4.-\tweak Y-offset #-0.5 \sd s\su |
          s2.*5 |
          
          \barNumberCheck 57
          s2.*4 |
          s4. s-\tweak Y-offset #-1 \sd |
          s4.\su s-\tweak Y-offset #-2 \sd |
          s4.\su s-\tweak Y-offset #-2 \sd |
          s2.\su |
          
          \barNumberCheck 65
          s2.*4 |
        }
      }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 138
    s2.*32 |
    
    \barNumberCheck 33
    \set Score.tempoHideNote = ##t
    \tempo 4. = 120 s4. \tempo 4. = 108 s |
    \alternative {
      { \tempo 4. = 96 s2. | }
      {
        \repeat volta 2 {
          \tempo 4. = 138
          s2.*6 |
          
          \barNumberCheck 41
          s2.*24 |
          
          \barNumberCheck 65
          s2.*2 |
          \tag layout { s2.*2 | }
          \tag midi {
            \alternative {
              {
                \tempo 4. = 120 s4. \tempo 4. = 108 s |
                \tempo 4. = 96 s2. |
              }
              {
                \tempo 4. = 116 s4. \tempo 4. = 96 s |
                \tempo 4. = 40 s2. |
              }
            }
          }
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*5 \pageBreak
  
  % page 2
  s2.*5 \break
  s2.*5 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \pageBreak
  
  % page 3
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
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
