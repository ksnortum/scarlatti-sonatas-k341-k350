%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in A major"
  opus   = "K.343"
  source = "https://ks15.imslp.org/files/imglnks/usimg/b/b1/IMSLP914923-PMLP526375-E4490_20-22-Scarlatti_-_Keyboard_Sonatas,_L.286-300.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 2) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . -2.75) (0 . -2.75) (0 . -2.75) (0 . -2.75)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -2.5)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (2.5 . 0) (2.5 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 1.5))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (2.5 . 0) (2.5 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . -0.75)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.25) (0.3 . 2) (0 . 2) (0 . 1.75))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . -1.5) (0 . -2))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeM = \shape #'((0 . 0) (0 . 0.75) (0 . 0.5) (0 . 0.75)) \etc
slurShapeN = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeO = \shape #'((0 . -3) (0 . -3) (0 . -3) (0 . -2.5)) \etc
slurShapeP = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . -1)) \etc
slurShapeQ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeR = \shape #'((0 . 0) (0 . 0) (4 . 1) (4 . -2.5)) \etc

moveNoteA = \once \override NoteHead.extra-spacing-width = #'(-1 . 0)

rhMark = \markup { 
  \path #0.1 #'((moveto 0 0)(rlineto 0 -1.75)(rlineto 0.5 0))
}
lhMark = \markup { 
  \path #0.1 #'((moveto 0 0)(rlineto 0 1.75)(rlineto 0.5 0))
}

%
% Music
%

global = {
  \time 2/2
  \key a \major
  \override Timing.TimeSignature.style = #'numbered
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    \osp #'(0 . 1) cs''8(\prall b cs d  \stemDown e cs a e |
    \stemNeutral fs8 d' gs, e' a,8-.) b'4( d,8) |
    \osp #'(0 . 1) cs8(\prall b cs d  \stemDown e cs a e |
    \stemNeutral fs8 d' gs, e'  a,8-.) b'4( d,8) |
    \stemDown cs4(\prall b8 a  b8) b'4( d,8) |
    cs4(\prall b8 a  b8) b'4( d,8) |
    \voiceOne a'4.( gs8) fs4.( e8) |
    d4.( cs8) b4.( a8) |
    
    \barNumberCheck 9
    \oneVoice gs8-\slurShapeC ( a b4 \stemDown e,8) e'( d b |
    cs4 b  a8) a'-\slurShapeD ( gs e |
    \voiceFour fs8) b,( a fs  gs4) as |
    s8 \voiceOne fs'4.~ fs8 e( ds cs |
    ds8) b'( a fs  gs4 as |
    b8) b-\slurShapeE ( a! fs  gs4 as |
    b2~ b8) b( a! fs |
    gs4 fs8 ds) \oneVoice e4-\slurShapeR ( ds8 b |
    
    \barNumberCheck 17
    cs8 ds e a,  gs fs e ds) |
    \voiceOne r4 b''4~  b8 a-\slurShapeQ ( g fs |
    e8) r b'4~  b8 a-\slurShapeG ( g fs |
    e8 d c b  a g fs e |
    \oneVoice \moveNoteA b'2~ b8) e-\slurShapeH ( ds e |
    <b b'>2~ b'8) e,( ds e |
    <b b'>2~ b'8) e,( ds e |
    \voiceOne b'2~ b8) b( a fs) |
    
    \barNumberCheck 25
    gs!4( fs8 b) \oneVoice e,4( ds8 gs) |
    cs,4( b8 e)  a,4( gs |
    fs8-.) fs^( gs a \voiceOne b2~ |
    b8) cs( b a  gs fs e ds) |
    % First and second beat, slur, see measure 25
    gs'4( fs8 b) \oneVoice e,4( ds8 gs) |
    cs,4( b8 e)  a,4( gs |
    fs8-.) fs^( gs a \voiceOne b2~ |
    b8) cs( b a  gs fs e ds |
    
    \barNumberCheck 33
    \oneVoice e8) b''4( <ds, fs>8  <e gs>-.) b4( <ds, fs>8 |
    <e gs>8-.) b''4( <ds, fs>8  <e gs>-.) b4( <ds, fs>8) |
    e1-> |
  }
  \repeat volta 2 {
    e4-. r r8 \voiceOne <e e'>( <fs d'!> <gs b> |
    cs4) b-. \oneVoice r8 <a a'>( <b g'> <cs e> |
    \voiceOne fs4) e( d) cs( |
    b4) a4( g8) d'-\slurShapeK ( cs e |
    \oneVoice as,2 b8) e-\slurShapeM ( fs g |
    
    \barNumberCheck 41
    <as, cs>2~ cs8) e-\slurShapeN ( fs g |
    as,8 g' fs e \hideNoteHead ds8) \voiceOne fs4.~ |
    fs8 g( fs e  ds) fs4.~ |
    fs8 e( ds e  fs) fs4.~ |
    fs8 g( e d!  cs) e4.~ |
    e8 d( cs d  e) e4.~ |
    e8 d( cs d  e4) \oneVoice r |
    r8 <a, a'>^( <b g'> <cs e> \voiceOne fs4) \oneVoice e( |
    
    \barNumberCheck 49
    d4 cs) \voiceOne \osp #'(2 . 1) fs( e~ |
    e8 d4 cs8  b8) b'4.~ |
    b8 c( \csBracket b\arpeggio a  b4) b~ |
    b8 a( \csBracket gs\arpeggio a  b8)\noBeam \oneVoice e,\( d b |
    \grace { c16( } c4.)\trill b16 a \voiceOne b8\) b4.~ |
    b8 a( \csBracket gs\arpeggio a  b8) b4.~ |
    b8 a( \csBracket gs\arpeggio a  b4) \oneVoice r4 |
    r8 \stemDown <e, e'>( <fs d'> <gs b>) \voiceOne \osp #'(1.5 . 0)
      cs4( b8 e) |
    
    \barNumberCheck 57
    \oneVoice a,4( gs8 cs)  fs,( fs' e d |
    \stemDown cs8 b a gs  a) cs'-\slurShapeP ( b b, |
    a8 a' gs gs,  fs fs' e e, |
    \stemNeutral d8 d' cs a  b4) r |
    r8 \stemDown <e, e'>( <fs d'> <gs b>) \voiceOne cs4( b8 e) |
    \oneVoice a,4( gs8 cs)  fs,( fs' e d |
    \stemDown cs8 b a gs  \stemNeutral a-.) <e' a cs>4-> <e gs b>8-. |
    <e a cs>8-. <cs e a>4-> <b d gs>8-.  <cs e a>8-. <a cs e>4-> <gs b>8-. |
    
    \barNumberCheck 65
    \stemUp <a cs>8-. <cs, e a>4-> <b d e gs>8-. <cs e a>2-> |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1*6 |
    \voiceFour cs''8( d e4)  fs,8( gs a4) |
    \set fingeringOrientations = #'(left)
    \csBracket d,8(\arpeggio <e\finger \rhMark> fs4)  b,8( cs d4) |
    
    \barNumberCheck 9
    s1*2 |
    s8 \voiceOne fs'4.~  fs8 \osp #'(0 . -1) e( ds cs |
    \voiceFour ds8) b( a! fs  gs4) as4( |
    b2~ b8) e( ds cs |
    ds4) b4~  b8 e-\slurShapeF ( ds cs |
    ds8 e fs4) b,2 |
    b2 s |
    
    \barNumberCheck 17
    s1 |
    e,8 e'( d! b <c\finger \lhMark>2 |
    b8) <e\finger \rhMark>( d b <c\finger \lhMark>2 |
    b8) s2.. |
    s1*3 |
    b8 r r4 b2 |
    
    \barNumberCheck 25
    b2 s |
    s1 |
    s2 b8 b,( cs ds |
    \csBracket e2)\arpeggio s |
    b'2 s |
    s1 |
    s2 b8 b,( cs ds |
    \csBracket e2)\arpeggio s |
    
    \barNumberCheck 33
    s1*3 |
  }
  \repeat volta 2 {
    s2 s8 \hideNoteHead e-\slurShapeA ( s4 |
    a8-.) s s4 s8 \hideNoteHead a-\slurShapeB ( s4 |
    d8) fs,( gs! as  b) d,( e fs |
    g8) b,( cs ds  e4) r |
    s1 |
    
    \barNumberCheck 41
    s1 |
    s2 ds'8 b( a fs |
    g4) a  ds8 b( a fs |
    g4) a  fs'8 b,( a fs |
    g4) s  cs8 a( g e |
    fs4) g  e'8 a,( g e |
    fs4) g s2 |
    s8 \hideNoteHead a8-\slurShapeO ( s4  d8) s4. |
    
    \barNumberCheck 49
    s2 r8 \osp #'(-1.5 . -2) b4( a8 |
    gs!4 a  gs8) e'( d b |
    \csBracket c4)\arpeggio d4~\arpeggio d8 e8( d b |
    \csBracket c4)\arpeggio d~\arpeggio d8 s4. |
    s2 b8 \osp #'(0 . 0.5) e,( d b |
    \csBracket c4)\arpeggio d\arpeggio b'8 \osp #'(0 . 0.5) e,( d b |
    \csBracket c4)\arpeggio d\arpeggio s2 |
    s2 a'8 s4. |
    
    \barNumberCheck 57
    s1*4 |
    s2 a8 s4. |
    s1*3 |
    
    \barNumberCheck 65
    s1 |
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
  \repeat volta 2 {
    a2.( cs4 |
    d4 e fs gs |
    a2.) cs,4( |
    d4 e fs gs) |
    a,8( a' gs fs  gs4 e) |
    a,8( a' gs fs  gs4 e) |
    \clef bass a,4( cs d cs |
    b4\arpeggio a gs fs |
    
    \barNumberCheck 9
    e8) e'( d b  cs4 b |
    a8) a'( gs e  fs4 e |
    d4 ds e cs |
    b4) ds( e cs |
    b4) ds( e cs |
    b4) ds( e cs) |
    
    
    \clef treble b8( b' a! fs)  gs,( gs' fs ds) |
    \clef bass e,8( e' ds b)  cs,( cs' b gs) |
    a,4 a'( b b, |
    e4) e'2( fs4 |
    g4) e2( fs4 |
    g4) \osp #'(1.5 . 0.5) e_( c2 |
    \clef treble 
    << 
      { 
        \voiceTwo b2~ b8) c( b a |
        b2~ b8) c-\slurShapeJ ( b a |
        b2~ b8) \osp #'(0 . 1) c( b a |
      } 
      \new Voice {
        \voiceThree b8( g' fs g a2~ |
        a8) g-\slurShapeI ( fs g a2~ |
        a8) g( fs g a2) |
      } 
    >>
    \oneVoice b,8) b'( a fs  gs!4 fs) |
    
    \barNumberCheck 25
    \clef bass e,8( e' ds b)  cs,( cs' b gs) |
    a,8( a' gs e)  fs,( fs' e, e' |
    b4-.) b'2( a4 |
    gs4\arpeggio a b b,) |
    e8( e' ds b)  cs,( cs' b gs) |
    a,8( a' gs e)  fs,( fs' e, e' |
    b4-.) b'2( a4 |
    gs4\arpeggio a b b, |
    
    \barNumberCheck 33
    e4-.) b( e-.) b( |
    e4-.) b( e-.) b-. |
    e,1-> |
  }
  \repeat volta 2 {
    e'8-. e'( d! b cs4 b |
    a8) a'( g e  fs4 e |
    d4 cs b a |
    g4 fs e) e'-\slurShapeL ( |
    fs,8) fs'( g fs  e) g,( fs e |
    
    \barNumberCheck 41
    fs8) fs'( g fs  e) g,( fs e |
    fs4) as( b ds |
    e4) c( b ds |
    e4) c( b ds |
    e4) g,( a cs! |
    d4) b( a cs |
    d4) b4( a8)\noBeam \clef treble a'( g e |
    fs4 e  d8) d'( cs a |
    
    \barNumberCheck 49
    b8 gs! a a,  d4 cs |
    b4 a e') gs( |
    a4\arpeggio f e) gs( |
    a4\arpeggio f e) \clef bass gs,( |
    a4 f e) gs( |
    a4\arpeggio f e) gs( |
    a4\arpeggio f  e8) e'( d b |
    cs!4 b)  a,8( a' gs e) |
    
    \barNumberCheck 57
    fs,8( fs' e cs)  d,4_( d' |
    e4 e, a) gs''( |
    fs4 e d cs |
    b4 a  gs8) e'( d b |
    cs4 b)  a,8( a' gs e) |
    fs,8( fs' e cs)  d,4-. \osp #'(0 . 2) d'( |
    e4 e, a) e'( |
    a4-.) \osp #'(0 . 2.5) e( a,-.) \osp #'(0 . 2.5) e'( |
    
    \barNumberCheck 65
    a,4-.) e-. a2-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1-\tweak Y-offset #-1 \mf |
    s1 |
    s1\p |
    s1 |
    s1\mf |
    s1\p |
    s1\mf |
    s1 |
    
    \barNumberCheck 9
    s1*8 |
    
    \barNumberCheck 17
    s1*3 |
    s8 s2..\> |
    s1\p |
    s1-\tweak Y-offset #-0.5 \cresc |
    s1 |
    s1\mf |
    
    \barNumberCheck 25
    s1*4 |
    s1-\tweak Y-offset #-5.5 \p |
    s1*3 |
    
    \barNumberCheck 33
    \override DynamicLineSpanner.Y-offset = #-6
    s1\cresc |
    s1 |
    s1\f |
  }
  \repeat volta 2 {
    s8\f s2..-\tweak Y-offset #0 \p |
    s8 s2..-\tweak Y-offset #1 \mf |
    s1*3 |
    
    \barNumberCheck 41
    s1*8 |
    
    \barNumberCheck 49
    s1*6 |
    s2 s8 s4.-\tweak Y-offset #1.5 \p |
    s1 |
    
    \barNumberCheck 57
    s1 |
    s2 s8 s4.-\tweak Y-offset #1 \mf |
    s1*4 |
    s2 s8 s4.-\tweak Y-offset #2 \cresc |
    s1 |
    
    \barNumberCheck 65
    s8 s2..\fPocoRall |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 84
    s1*32 |
    
    \barNumberCheck 33
    s1 |
    \set Score.tempoHideNote = ##t
    s4 \tempo 2 = 76 s \tempo 2 = 69 s \tempo 2 = 63 s |
    \tempo 2 = 58 s1 |
  }
  \repeat volta 2 {
    \tempo 2 = 84
    s1*5 |
    
    \barNumberCheck 41
    s1*16 |
    
    \barNumberCheck 57
    s1*7 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        {
          s2. \tempo 2 = 76 s4 |
          
          \barNumberCheck 65
          \tempo 2 = 69 s4 \tempo 2 = 63 s \tempo 2 = 58 s2 |
        }
        {
          s2. \tempo 2 = 72 s4 |
          
          \barNumberCheck 65
          \tempo 2 = 63 s4 \tempo 2 = 56 s \tempo 2 = 40 s2 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*5 \break
  s1*5 \break
  s1*4 \break
  s1*4 \break
  s1*4 \pageBreak
  
  % page 2
  s1*4 \break
  s1*4 \break
  s1*5 \break
  s1*4 \break
  s1*4 \pageBreak
  
  % page 3
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*5 \break
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
