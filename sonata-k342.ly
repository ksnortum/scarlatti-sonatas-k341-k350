%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in A major"
  opus   = "K.342"
  source = "https://ks15.imslp.org/files/imglnks/usimg/f/f2/IMSLP914931-PMLP526184-E4468_1-3-Scarlatti_-_Keyboard_Sonatas,_L.191-200.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -0.5) (0 . 0.5) (0 . 0) (0 . -3)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (-0.2 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . -2) (0 . 0.5) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0.2) (0.3 . 0.2) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0.2) (0.3 . 0.2) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 1) (0 . -1.5))
                      ) \etc
slurShapeI = \shape #'((0 . -1.5) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc
slurShapeJ = \shape #'((0 . -0.5) (0 . 0.5) (0 . 0) (0 . -3)) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0.2) (0 . 0.2) (0 . 0))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . -1) (0 . 1) (0 . 1) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . -0.5))
                      ) \etc
slurShapeN = \shape #'((0 . -2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeP = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . -1))
                        ((0.3 . 0.2) (0.3 . 0.2) (0 . 0) (0 . 0))
                      ) \etc
slurShapeQ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeR = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 2) (0 . -2))
                      ) \etc

%
% Music
%

global = {
  \time 2/2
  \key a \major
  \override Timing.TimeSignature.style = #'numbered
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    a''8( gs a b  e, d cs b |
    a8) r r4 a'2 |
    r8 fs8( e d  \stemDown cs b a gs |
    \stemNeutral a8) r r4 a'2 |
    r8 fs8-\slurShapeB ( e d  \stemDown cs b a gs |
    a8 e' d cs  \stemNeutral b a gs a |
    e8 d' cs b  e d cs b |
    a8 e' d cs  b a gs a |
    
    \barNumberCheck 9
    e8 d' cs b  e d cs b |
    a8 gs cs b  a gs cs b |
    a gs8 cs b  a gs) a'-\slurShapeE ( gs |
    fs8 e a gs  fs e a gs |
    fs e ds cs  b a gs fs |
    gs8 e a fs  b gs cs a |
    ds8 b e cs  fs ds gs e |
    fs2)\prall r |
    
    \barNumberCheck 17
    r8 a-\slurShapeF ( g fs  e d c b |
    c8 b' a g  fs e ds e |
    b8 a' g fs e d! c b |
    c8 b' a g  fs e ds e |
    b8 ds b fs'  b, e b g' |
    b,8 fs' b, a'  b, g' b, b' |
    b,8 a' g fs  e d! c b |
    a8 c b a  g fs e ds |
    
    \barNumberCheck 25
    e8 ds gs! fs  e ds gs fs |
    e ds gs fs  e ds) e'( ds |
    cs8 b e ds  cs b e ds |
    cs8 e ds cs  b a gs fs |
    e8 ds gs! fs  e ds gs fs |
    e ds gs fs  e ds) e'-\slurShapeH ( ds |
    cs8 b e ds  cs b e ds |
    cs8 e ds cs  b a gs fs |
    
    \barNumberCheck 33
    gs8 e a fs  b gs cs a |
    ds8 b e cs  fs ds gs e |
    a8 fs b a  gs fs e ds |
    cs8 e ds cs  b a gs fs |
    gs8 e a fs  b gs cs a |
    ds8 b e cs  fs ds gs e |
    a8 fs b a  gs fs e ds |
    cs8 e ds cs  b a gs fs |
    
    \barNumberCheck 41
    e1) |
  }
  \repeat volta 2 {
    <gs e'>2-\slurShapeI \( <gs f'> |
    <a e'>2 <b d> |
    \grace { c8( } \afterGrace 15/16 c2)\trill { b16 c} b2\) |
    <gs e'>2-\slurShapeK \( <gs f'> |
    <a e'>2 <b d> |
    \grace { c8( } \afterGrace 15/16 c2)\trill { b16 c} b2\) |
    gs8-\slurShapeM ( e a fs b gs cs! a |
    
    \barNumberCheck 49
    d8 b e cs  fs d gs e |
    a8 e cs e  a, e' d cs |
    d8 cs fs e  d cs fs e |
    d8 cs fs e  d cs b a |
    gs!8 b e, b'  e, a e cs' |
    e,8 b' e, d'  e, cs' e, e' |
    e,8 d' cs b  cs e a, cs |
    b2)-\tag layout \prallprall -\tag midi \prall r |
    
    \barNumberCheck 57
    r8 d-\slurShapeO ( c b  a g f e |
    \stemUp f8 e' d c  b a gs! a |
    e8 d' c b  a g f e
    f8 e' d c  b a gs! a |
    e8 gs e b'  e, a e c' |
    e,8 b' e, d'  e, c' e, e' |
    \stemDown e,8 f' e d  c b a g |
    f8 f' e d  c b a gs! |
    
    \barNumberCheck 65
    a8 gs cs! b  a gs cs b |
    a8 gs cs b  a gs) a'-\slurShapeQ ( gs |
    fs8 e a gs  fs e a gs |
    fs8 a gs fs  e d cs b |
    a8 gs cs b  a gs cs b |
    a8 gs cs b  a gs) a'-\slurShapeR ( gs |
    fs8 e a gs  fs e a gs |
    fs8 a gs fs  e d cs b |
    
    \barNumberCheck 73
    cs8 a d b  e cs fs d |
    gs e a fs  b d, cs b |
    cs8 a d b  e cs fs d |
    gs e a fs  b d, cs b |
    cs8 b' a gs  fs e d cs |
    b8 fs' e d  cs b a gs |
    a8 fs' e d cs b a gs |
    \stemNeutral fs8 a gs fs  e d cs b |
    
    \barNumberCheck 81
    a1) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R1 |
    a8-\slurShapeA ( a' gs a  fs a e a |
    d,2 e |
    a,8) a'-\slurShapeC ( gs a  fs a e a |
    d,2 e |
    a,2) a( |
    gs2 e |
    a2) a-\slurShapeD ( |
    
    \barNumberCheck 9
    gs2 e |
    a2 gs |
    fs2 e |
    ds2 cs |
    b2) \osp #'(2 . 0) b( |
    \addStaccato {
      e4) fs gs a |
      b4 cs ds e |
    }
    b2 r |
    
    \barNumberCheck 17
    \clef treble g'2 r |
    a2 r |
    g2 r |
    a2 r |
    a2-\slurShapeG ( g |
    fs2 e |
    ds2 e |
    \clef bass a,2 b |
    
    \barNumberCheck 25
    e,2 ds |
    cs2 b |
    a2 gs |
    a2 b |
    e2 ds |
    cs2 b |
    a2 gs |
    a2 b |
    
    \barNumberCheck 33
    \addStaccato {
      e4) fs gs a |
      b4 cs ds e |
    }
    fs4( ds e-.) gs,-. |
    a4-. a,-. \osp #'(2 . 0) b2( |
    \addStaccato {
      e4) fs gs a |
      b4 cs ds e |
    }
    fs4( ds e-.) gs,-. |
    a4-. a,-. b2( |
    
    \barNumberCheck 41
    e,1) |
  }
  \repeat volta 2 {
    e'8-\slurShapeJ ( e' d c  e, d' c b |
    e,8 c' b a  e b' a gs |
    a2 e) |
    e8-\slurShapeL ( e' d c  e, d' c b |
    e,8 c' b a  e b' a gs |
    a2 e) |
    \addStaccato {
      e4 fs gs a |
      
      \barNumberCheck 49
      b4 cs d e |
    }
    a,2-\slurShapeN ( g' |
    fs2 g |
    fs2 d) |
    \osp #'(0 . -0.5) d2( cs |
    b2 a |
    gs2 a |
    e2) r |
    
    \barNumberCheck 57
    c'2 r |
    d2 r |
    c2 r |
    d2 r |
    d2-\slurShapeP ( c |
    b2 a |
    gs2 a |
    d, e |
    
    \barNumberCheck 65
    a2 gs |
    fs2 e |
    d2 cs |
    d2 e |
    a2 gs |
    fs2 e |
    d2 cs |
    d2 e |
    
    \barNumberCheck 73
    \addStaccato {
      a4) b cs d |
      e4 fs gs e |
      a,,4 b cs d |
      e4 fs gs e |
    }
    a2_( cs, |
    d2 e |
    a,2 cs |
    d2 e |
    
    \barNumberCheck 81
    a,1) |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\f |
    s1*2 |
    s8 s2..-\tweak Y-offset #1.5 \p |
    s1 |
    s1\cresc |
    s1*2 |
    
    \barNumberCheck 9
    s1*5 |
    s1\f |
    s1*2 |
    
    \barNumberCheck 17
    s1-\tweak Y-offset #0 \p |
    s1*3 |
    s1-\tweak Y-offset #-0.5 \cresc |
    s1 |
    s2\mf s\dim |
    s1 |
    
    \barNumberCheck 25
    s1-\tweak Y-offset #-1.5 \p-\tweak Y-offset #-1 \cresc |
    s1*3 |
    s8\mf s4.\p s2\cresc |
    s1*3 |
    
    \barNumberCheck 33
    s1\f |
    s1*3 |
    s1\p\cresc |
    s1 |
    s1-\tweak Y-offset #1 \f |
    s1 |
    
    \barNumberCheck 41
    s1 |
  }
  \repeat volta 2 {
    s2-\tweak Y-offset #-1 \p s\cresc |
    s1 |
    \grace { s8-\tweak Y-offset #-1 \mf } s1 |
    s2\p s\cresc |
    s1 |
    \grace { s8\mf } s1 |
    s4\p s2.\cresc |
    
    \barNumberCheck 49
    s1 |
    s1\f |
    s1*6 |
    
    \barNumberCheck 57
    s1-\tweak Y-offset #-1 \p |
    s1*3 |
    s1\cresc |
    s1 |
    s1\mf |
    s1 |
    
    \barNumberCheck 65
    s4.\> s8\! s2\p\cresc |
    s1*3 |
    s8\mf s4.\p s2\cresc |
    s1*3 |
    
    \barNumberCheck 73
    s1\f |
    s1 |
    s2\p s\cresc |
    s1 |
    s1\f |
    s1*3 |
    
    \barNumberCheck 81
    s1 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 126
    s1*32 |
    
    \barNumberCheck 33
    s1*7 |
    \set Score.tempoHideNote = ##t
    s4 \tempo 2 = 116 s \tempo 2 = 108 s \tempo 2 = 100 s |
    
    \barNumberCheck 41
    \tempo 2 = 92 s1 |
  }
  \repeat volta 2 {
    \tempo 2 = 126
    s1*7 |
    
    \barNumberCheck 49
    s1*24 |
    
    \barNumberCheck 73
    s1*7 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 2 = 116 s \tempo 2 = 108 s \tempo 2 = 100 s |
          
          \barNumberCheck 81
          \tempo 2 = 92 s1 |
        }
        {
          s4 \tempo 2 = 112 s \tempo 2 = 100 s \tempo 2 = 88 s |
          
          \barNumberCheck 81
          \tempo 2 = 76 s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 2
  s1*5 \break
  s1*5 \break
  s1*6 \break
  s1*5 \break
  \grace { s8 } s1*5 \pageBreak
  
  % page 3
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
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
