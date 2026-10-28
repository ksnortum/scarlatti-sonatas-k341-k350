%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in D major"
  opus   = "K.346"
  source = "https://ks15.imslp.org/files/imglnks/usimg/5/5d/IMSLP915012-PMLP526868-E4444_43-45-Scarlatti_-_Keyboard_Sonatas,_L.046-063.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -0.3) (0 . 0) (0 . 0.5) (0 . -1)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (2.5 . 0) (2.5 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 1))
                      ) \etc
slurShapeE = \shape #'((0 . 0) (0 . 1) (1 . 1.5) (0 . -1)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc

%
% Music
%

global = {
  \time 3/8
  \key d \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    a''4.( |
    fs4.) |
    b16( a g fs e d |
    cs16 b a g' fs e |
    d8-.) fs-. a->(~ |
    a16 g fs e d cs |
    b8-.) cs-. d-. |
    e8-. \afterGrace 15/16 g,4-\slurShapeA ^\(\trill { fs32( g) } |
    
    \barNumberCheck 9
    fs8-.\) fs'16( e d e |
    g,8-.) e'16( d cs d |
    a8-.) fs'16( e d e |
    g,8-.) e'16( d cs d |
    a8-.) fs'16-\slurShapeB ( e d cs |
    b16 fs' e d cs b |
    cs8-.) e16( d cs d |
    gs,8-.) d'16( cs b cs |
    
    \barNumberCheck 17
    a8-.) e'16( d cs d |
    gs,8-.) d'16( cs b cs |
    a8-.) a'16-\slurShapeC ( gs fs gs |
    a,8-.) a'16( gs fs a |
    gs16 fs e d cs b |
    cs8 d) b-. |
    cs8( d) b-. |
    cs8( d) b-. |
    
    \barNumberCheck 25
    cs8( d) e-. |
    << { fs8( g) e-. } \\ { a,4. } >> |
    << { fs'8( g) e-. } \\ { a,4. } >> |
    fs'16-\slurShapeE ( e d cs b a |
    gs16 b a cs b d |
    cs16 e d e fs a,) |
    gs8.(-\tag layout \prallprall -\tag midi \prall fs16 e8) |
    r16 as( b as b cs) |
    
    \barNumberCheck 33
    r16 cs( d cs d e) |
    r16 fs( e d cs b |
    cs16)\noBeam gs( a gs a b) |
    r16 b( cs b cs d) |
    r16 e( fs e fs gs |
    a16 e cs d e cs |
    fs16 d cs b a b |
    cs16)\noBeam gs( a gs a b) |
    
    \barNumberCheck 41
    r16 b( cs b cs d) |
    r16 e-\slurShapeF ( fs e fs gs |
    a16 e cs d e cs |
    fs16 d cs b a b |
    \stemDown cs16 b a gs a e |
    b'16 gs d' b e d |
    cs16 b a gs a e |
    b'16 gs d' b e d |
    
    \barNumberCheck 49
    cs16 b a gs) a'( e |
    fs16 d cs b a gs |
    \stemNeutral a4.->) |
  }
  \repeat volta 2 {
    \override Hairpin.to-barline = ##f
    e'4.(^\> |
    cs4.)\! |
    fs16( e d cs b as |
    e'16 d cs b as b) |
    as8.(-\tag layout \prallprall -\tag midi \prall gs16 fs8) |
    
    \barNumberCheck 57
    r8 cs'16( b as b |
    \stemDown fs8-.) d'16( cs b cs |
    g8-.) cs16-\slurShapeG ( b as b |
    fs8-.) d'16( cs b cs |
    a!8-.) fs'16( e ds e |
    b8-.) g'16( fs e fs |
    c8-.) fs16( e ds e |
    b8-.) g'16( fs e fs |
    
    \barNumberCheck 65
    c8-.) fs16( e ds e |
    b16-.) ds( e ds e fs) |
    r16 fs( g fs g a) |
    r16 b( a g fs e |
    << 
      { \voiceOne fs8 g) e-. | } 
      \new Voice { \voiceFour a,4. | } 
    >>
    << { fs'8( g) e-. } \\ { a,4. } >> |
    \oneVoice fs'16( e d c b a |
    b8 c) a-. |
    
    \barNumberCheck 73
    b8( c) a-. |
    \osp #'(-0.5 . -0.5) b16( d cs! e d fs |
    e16 g fs a b d,) |
    cs8.(-\tag layout \prallprall -\tag midi \prall b16 a8) |
    r16 ds( e ds e fs) |
    r16 fs( g fs g a) |
    r16 b( a g fs e |
    fs16)\noBeam cs( d cs d e) |
    
    \barNumberCheck 81
    r16 e( fs e fs g) |
    r16 a( b a b cs |
    d16 a fs g a fs |
    b16 g fs e d e |
    fs16-.)\noBeam cs( d cs d e) |
    r16 e( fs e fs g) |
    r16 a( b a b cs |
    d16 a fs g a fs |
    
    \barNumberCheck 89
    b16 g fs e d e |
    fs16 e d cs d a |
    e'16 cs g' e a g |
    fs16 e d cs d a |
    e'16 cs g' e a g |
    fs16 e d cs) d'( a |
    b16 g fs e d e |
    fs16 e d cs d a |
    
    \barNumberCheck 97
    b16 g fs e d cs |
    d4.->) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R4.*4 |
    fs'4.( |
    d4.) |
    g16( fs e d cs b |
    a8-.) b( cs |
    
    \barNumberCheck 9
    d4) fs8-. |
    \addStaccato {
      e8 a, e' |
      fs8 a, fs' |
      e8 a, e' |
      fs8 a, fs' |
      gs8 e gs |
      a,8 e a |
      b8 e, b' |
      
      \barNumberCheck 17
      cs8 e, cs' |
      d8 e, d' |
      cs8 a cs |
      ds8 b ds |
      \clef treble e8 fs gs |
    }
    a16-\slurShapeD _( e b' e, gs e |
    a16 e b' e, gs e |
    a16 e b' e, gs e |
    
    \barNumberCheck 25
    a16 g! fs e d cs |
    \clef bass d16 a e' a, cs a |
    d16 a e' a, cs a |
    d4) ds8-. |
    e8( cs gs |
    a8 fs d) |
    \osp #'(0 . 2.5) e8( e,4) |
    e''8-\slurShapeH ( d cs |
    
    \barNumberCheck 33
    b8 a gs |
    fs gs e |
    a,8-.) a'( gs |
    fs8 e d |
    cs8 a' b, |
    a8 b cs |
    d8 e) e,-. |
    a8-. a'( gs |
    
    \barNumberCheck 41
    fs8 e d |
    cs8 a' b, |
    a8 b cs |
    d8 e) e,-. |
    a8( b cs |
    d8 e) e,-. |
    a8( b cs |
    d8 e) e,-. |
    
    \barNumberCheck 49
    a8( b cs |
    d8 e) e,-. |
    a4.-> |
  }
  \repeat volta 2 {
    R4. |
    \override Hairpin.to-barline = ##f
    a'4.(\> |
    fs4.\! |
    g!8-.) e-. g-. |
    \osp #'(0 . 3) fs8( fs,4) |
    
    \barNumberCheck 57
    \addStaccato {
      e''8 fs, e' |
      d8 fs, e' |
      e8 fs, e' |
      d8 fs, d' |
      ds8 b fs' |
      g8 b, g' |
      a8 b, a' |
      g8 b, g' |
      
      \barNumberCheck 65
      a8 b, a' |
    }
    g4( fs8 |
    e4 d8 |
    cs8-.) a-. cs-. |
    d16( a e' a, cs a |
    d16 a e' a, cs a |
    d8-.) e-. fs-. |
    \clef treble g16( d a' d, fs d |
    
    \barNumberCheck 73
    g16 d a' d, fs d |
    \addStaccato {
      g8) e fs |
      \clef bass cs8 d g, |
    }
    \osp #'(0 . 3) a8( a,4) |
    a''8( g fs |
    e8) e,( d' |
    cs8-.) a-. cs-. |
    d,8-. d'( cs |
    
    \barNumberCheck 81
    b8 a g |
    fs8 d' e, |
    d8 e fs |
    g a) a,-. |
    d8-. d'( cs |
    b8 a g |
    fs8 d' e, |
    d8 e fs |
    
    \barNumberCheck 89
    g a) a,-. |
    d8( e fs |
    g8 a) a,-. |
    d8( e fs |
    g8 a) a,-. |
    d8( e fs |
    g8 a) a,-. |
    d8( e fs |
    
    \barNumberCheck 97
    g8 a) a,-. |
    d,4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.-\tweak Y-offset #-2 \f |
    s4.-\tweak Y-offset #-2 \p |
    s4.*2 |
    s4.\f |
    s4.\p |
    s4. |
    s8 s4\mf |
    
    \barNumberCheck 9
    s8 s16.\p s32\cresc s8 |
    s4.*3 |
    s4.\f |
    s4. |
    s8 s16.\p s32\cresc s8 |
    s4. |
    
    \barNumberCheck 17
    s4.*3 |
    s4.-\tweak X-offset #-2.5 \f |
    s4. |
    s8.\> s\p |
    s4.*2 |
    
    \barNumberCheck 25
    s4\< s16 s\! |
    s4.\f |
    s4.*5 |
    s4. |
    
    \barNumberCheck 33
    s4.-\tweak Y-offset #1 \cresc |
    s4. |
    s16\mf s\p s4 |
    s4.\cresc |
    s4. |
    s4\f\> s8\! |
    s4.\p |
    s16 s-\tweak Y-offset #-0.5 \cresc s4 |
    
    \barNumberCheck 41
    s4.*2 |
    s4\f\> s8\! |
    s4.\p |
    s4.\cresc |
    s4.*3 |
    
    \barNumberCheck 49
    s4.\f |
    s4.*2 |
  }
  \repeat volta 2 {
    s4.\mf |
    s4. |
    s4.\p |
    s4.*2 |
    
    \barNumberCheck 57
    s8\f s16.\p s32\cresc s8 |
    s4.*7 |
    
    \barNumberCheck 65
    s4. |
    s4.\f |
    s4.*6 |
    
    \barNumberCheck 73
    s4.*4 |
    s4.\p |
    s4.-\tweak Y-offset #-0.5 \cresc |
    s4. |
    s16\mf s\p s4 |
    
    \barNumberCheck 81
    s4.\cresc |
    s4. |
    s4\f\> s8\! |
    s4.\p |
    s16 s\cresc s4 |
    s4.*2 |
    s4\f\> s8\! |
    
    \barNumberCheck 89
    s4.\p |
    s4.-\tweak Y-offset #-1 \cresc |
    s4.*6 |
    
    \barNumberCheck 97
    s4. |
    % forte is missing in source
    s4.-\tweak Y-offset #-1.5 \f |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 92
    s4.*48 |
    
    \barNumberCheck 49
    s4. |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 84 s8 \tempo 4. = 76 s \tempo 4. = 69 s |
    \tempo 4. = 63 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 92
    s4.*5 |
    
    \barNumberCheck 57
    s4.*40 |
    
    \barNumberCheck 97
    \tag layout { s4.*2 | } 
    \tag midi {
      \alternative {
        {
          \tempo 4. = 84 s8 \tempo 4. = 76 s \tempo 4. = 69 s |
          \tempo 4. = 63 s4. |
        }
        {
          \tempo 4. = 80 s8 \tempo 4. = 69 s \tempo 4. = 60 s |
          \tempo 4. = 30 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*7 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \pageBreak
  
  % page 2
  s4.*6 \break
  s4.*7 \break
  s4.*7 \break
  s4.*8 \break
  s4.*7 \pageBreak
  
  % page 3
  s4.*7 \break
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
