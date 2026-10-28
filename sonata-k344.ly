%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in A major"
  opus   = "K.344"
  source = "https://ks15.imslp.org/files/imglnks/usimg/8/8a/IMSLP914457-PMLP526536-E4490_33-35-Scarlatti_-_Keyboard_Sonatas,_L.286-300.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (-0.2 . 1) (-0.2 . 1.5))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (-0.2 . 0) (-0.2 . 1))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 3/8
  \key a \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    \stemDown a''16( e cs a e cs) |
    d'4(\prall cs8) |
    b16( d fs a, gs a) |
    \stemNeutral gs8.(\prall fs16 e8) |
    r8 r e'16( gs, |
    a8-.) b-. cs-. |
    fs,16( d' a8-.) gs-.\prall |
    a4. |
    
    \barNumberCheck 9
    a'16( e c a f' gs, |
    a8-.) b-. c-. |
    c4( d8) |
    c8(\prall b) a-. |
    a'16( e c a f' gs, |
    a8-.) b-. c-. |
    c4( d8) |
    c8(\prall b) a-. |
    
    \barNumberCheck 17
    a'16( e c a) <g e' g>8-> |
    \stemDown f'16( d a f) <e c' e>8-.-> |
    \stemNeutral d'16( b f d) <c a' c>8~ |
    <a' c>8 <gs! b>16( <fs! a> <gs b>8) |
    r8 r b-. |
    e4( d8) |
    c4( b8) |
    a4( g8) |
    
    \barNumberCheck 25
    f4( e8) |
    g'16-\slurShapeA ( e bf g a g' |
    f8-.) e-. d-. |
    a'16( f d a b! a' |
    g8-.) fs!-. e-. |
    g16( f a g c e,) |
    e8(\prall ds16 cs b8-.) |
    fs'16( ds b fs c' b |
    
    \barNumberCheck 33
    a8\prall gs a) |
    fs'16( ds b fs c' b |
    a8\prall gs a) |
    a'16( fs ds b b' a |
    \addStaccato {
      g8) a b |
      c8 e, ds\prall |
    }
    \appoggiatura { ds8 } e4.-> |
    r16 b( c d c b) |
    
    \barNumberCheck 41
    b16( a gs a gs a) |
    r16 b( c d c b |
    e16 a, gs a gs a) |
    a'16( fs ds b b' a |
    \addStaccato {
      g8) a b |
      c8 e, ds\prall |
    }
    e16( gs! b8)\noBeam r16 gs( |
    b8) r16 gs( b gs |
    
    \barNumberCheck 49
    b16 a gs fs e gs |
    % Third beat, ds according to an urtext
    fs16 a gs fs e ds |
    e16 gs b8)\noBeam r16 gs( |
    b8) r16 gs( b gs |
    b16 a gs fs e gs |
    fs16 a gs fs e ds |
    e16 ds cs b a gs |
    fs16 a gs fs e ds |
    
    \barNumberCheck 57
    e4.->) |
  }
  \repeat volta 2 {
    r8 r b'-. |
    e4( d8) |
    cs4( b8) |
    cs8(\prall b16 cs a8) |
    a'16( e cs a gs) gs'( |
    fs16 d a fs e e' |
    d16 b gs d cs cs') |
    
    \barNumberCheck 65
    cs8-. b8.(\trill a32 b) |
    b16( gs e e' d cs) |
    \grace { cs16( } b8)(\trill as b) |
    b16( gs e d' cs b) |
    a8(\trill gs a) |
    a'16( fs ds cs' b a |
    gs16 fs e d! cs b |
    cs16-.) d32( e d16 cs b a) |
    
    \barNumberCheck 73
    \grace { a16( } gs8.)(\prall fs16 e8) |
    r16 e'( f g f e) |
    e16( d cs d cs d) |
    r16 e( f g f e |
    a16 d, cs d cs d) |
    r16 b'( gs! e d b |
    c16 b c d e8-.) |
    f8-. a,-. gs-.\prall |
    
    \barNumberCheck 81
    \appoggiatura { gs-> } a4. |
    r16 e'( f g f e |
    gs! a e f cs! d) |
    r16 e( f g f e |
    \set subdivideBeams = ##t
    \omit TupletBracket
    \tuplet 3/2 8 { a g f  e d cs } d8-.) |
    \set subdivideBeams = ##f
    r16 b'-\slurShapeC ( gs! e d b |
    c16 b c d e8-.) |
    f8-. a,-. gs-.\prall |
    
    \barNumberCheck 89
    a16( cs! e8)\noBeam r16 e( |
    a8) r16 e-\slurShapeE ( a e |
    cs'16 b a gs a e |
    fs16 d cs b a gs |
    a16 cs e8)\noBeam r16 e( |
    a8) r16 \osp #'(-1 . -0.5) e( a e |
    cs'16 b a gs a e |
    fs16 d cs b a gs |
    
    \barNumberCheck 97
    cs16 b a gs fs e |
    \tuplet 3/2 { d16 e \sdb #1 fs } e d cs b |
    a4.->) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    a4. |
    b8( gs a) |
    d,4( fs8) |
    \osp #'(0 . 2.5) e8( e,4) |
    e''16( b gs e d'8 |
    cs8-.) b-. a-. |
    d8( e-.) e,-. |
    a8( e-.) a,-. |
    
    \barNumberCheck 9
    a'4( d8 |
    c8-.) b-. a-. |
    a'16( e c a f' gs,) |
    a8( e) a,-. |
    a'4( d8 |
    c8-.) b-. a-. |
    a'16( e c a f' gs,) |
    a8( e) a,-. |
    
    \barNumberCheck 17
    a8_( b c |
    d4 e8 |
    f4) f,8-. |
    e4.-> |
    e''16( b gs e d d' |
    c,16 c' a c, b b' |
    a,16 a' e a, g g' |
    f,16 f' d f, e e' |
    
    \barNumberCheck 25
    d,16 d' b g c,8-.) |
    c''4( cs8 |
    d8-.) a-. d,-. |
    d'4( ds8 |
    e8-.) b-. e,-. |
    e8( c a) |
    b4.-> |
    b8( fs' b |
    
    \barNumberCheck 33
    c,8 e a) |
    b,8( fs' b |
    c,8 e a) |
    \osp #'(2.5 . 0) b,4( ds8 |
    \addStaccato {
      e8) fs g |
      a8 b b, |
    }
    e4.-> |
    b8-\slurShapeB ( fs' b |
    
    \barNumberCheck 41
    c,8 e a) |
    b,8( fs' b |
    c,8 e a) |
    \osp #'(2.5 . 0) b,4( ds8 |
    \addStaccato {
      e8) fs g |
      a8 b b, |
    }
    e8 r16 e'16-.\noBeam e,,8-> |
    r16 e''-. e,,8->\noBeam e''8-. |
    
    \barNumberCheck 49
    e,,8-. fs-. gs-. |
    a8( b) b-. |
    e8 r16 e'16-.\noBeam e,,8-> |
    r16 e''-. e,,8->\noBeam e''8-. |
    e,,8-. fs-. gs-. |
    a8( b) b-. |
    e8-. fs-. gs-. |
    a8( b) b,-. |
    
    \barNumberCheck 57
    e,4.-> |
  }
  \repeat volta 2 {
    e''16( b gs e d! d' |
    cs16 a e cs b b' |
    a16 e cs a e8-.) |
    a4. |
    a8_( b cs |
    \stemUp d4 cs8) |
    b4( a8) |
    
    \barNumberCheck 65
    e4.-> |
    \stemNeutral <e' b'>4._( |
    <d b'>4.) |
    <d gs>4.( |
    <cs a'>4.) |
    b8( cs) ds-. |
    \addStaccato {
      e8 fs gs |
      a8 fs d |
    }
    
    \barNumberCheck 73
    e,4. |
    e'8( b' e |
    f,8 a d) |
    e,8( b' e |
    f,8 a d) |
    \osp #'(-1 . 0) e,8( e' gs, |
    a8 b c-.) |
    d,8-. e-. e,-. |
    
    \barNumberCheck 81
    a4.-> |
    e'8( b' e |
    f,8 a d) |
    e,8( b' e |
    f,8 a d) |
    e,8-\slurShapeD ( e' gs, |
    a8 b c-.) |
    d,8-. e-. e,-. |
    
    \barNumberCheck 89
    a8-. r16 a''-.\noBeam a,,8-> |
    r16 a''-. a,,8->\noBeam a''-. |
    a,,8-. b-. cs-. |
    d8( e) e,-. |
    a8-. r16 a''-.\noBeam a,,8-> |
    r16 a''-. a,,8->\noBeam a''-. |
    a,,8-. b-. cs-. |
    d8( e) e,-. |
    
    \barNumberCheck 97
    a8-. b-. cs-. |
    d8( e) e, |
    a4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4.*7 |
    
    \barNumberCheck 9
    s4.\p |
    s4.*7 |
    
    \barNumberCheck 17
    s4\cresc s8-\tag layout \sf -\tag midi \mf |
    s4-\tag midi \mp s8-\tag layout \sf -\tag midi \f |
    s4-\tag midi \mf s8\f |
    s8 s\> s\! |
    s4\p s8\cresc |
    s4.*3 |
    
    \barNumberCheck 25
    s4.\f |
    s4.-\tweak Y-offset #-1.5 \p |
    s4. |
    s4.-\tweak Y-offset #2 \cresc |
    s4.*3 |
    s4.\f |
    
    \barNumberCheck 33
    s4. |
    s4.-\tweak Y-offset #-1 \p |
    s4. |
    s4.\f |
    s4.*3 |
    s4.\p |
    
    \barNumberCheck 41
    s4. |
    s4.\cresc |
    s4. |
    s4.\f |
    s4.*4 |
    
    \barNumberCheck 49
    s4.*2 |
    s4-\tweak Y-offset #0 \p s16 s\crescWO |
    s4. |
    s4.-\tweak Y-offset #-1.5 \f |
    s4.*3 |
    
    \barNumberCheck 57
    s4. |
  }
  \repeat volta 2 {
    s8.\p s\cresc |
    s4.*2 |
    s4.-\tweak Y-offset #-1 \f |
    s4.*3 |
    
    \barNumberCheck 65
    s4. |
    s4.\p |
    s4.\cresc |
    s4.*2 |
    s4.\f |
    s4.*2 |
    
    \barNumberCheck 73
    s4. |
    \override DynamicLineSpanner.Y-offset = #-4.5
    s4.\p |
    s4. |
    s4.\cresc |
    s4. |
    s4.\f |
    s4.*2 |
    
    \barNumberCheck 81
    s4. |
    \override DynamicLineSpanner.Y-offset = #-4.5
    s4.\p |
    s4. |
    s4.\cresc |
    s4. |
    s4.\f |
    s4.*2 |
    
    \barNumberCheck 89
    s4.*4 |
    s4-\tweak Y-offset #-2.5 \p s16 s\crescWO |
    s4. |
    s4.\f |
    s4. |
    
    \barNumberCheck 97
    s4.*3 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 80
    s4.*48 |
    
    \barNumberCheck 49
    s4.*7 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 72 s8 \tempo 4. = 66 s \tempo 4. = 60 s |
    
    \barNumberCheck 57
    \tempo 4. = 56 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 80
    s4.*7 |
    
    \barNumberCheck 65
    s4.*32 |
    
    \barNumberCheck 97
    s4. |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 72 s8 \tempo 4. = 66 s \tempo 4. = 60 s |
          \tempo 4. = 56 s4. |
        }
        {
          \tempo 4. = 69 s8 \tempo 4. = 60 s \tempo 4. = 54 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*6 \break
  s4.*7 \break
  s4.*7 \break
  s4.*6 \break
  s4.*7 \pageBreak
  
  % page 2
  s4.*7 \break
  s4.*6 \break
  s4.*6 \break
  s4.*7 \break
  s4.*7 \pageBreak
  
  % page 3
  \grace { s16 } s4.*7 \break
  s4.*6 \break
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
