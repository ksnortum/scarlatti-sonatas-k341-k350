%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in C major"
  opus   = "K.340"
  source = ""
}

% TODO remove me
\paper {
  ragged-right = ##t
  ragged-last-bottom = ##t
  min-systems-per-page = #0
}

%
% Positions and shapes
%

% TODO None

%
% Music
%

global = {
  \time 4/4
  \key c \major
  % TODO remove?
  % \set Staff.printKeyCancellation = ##f
  % \override Timing.TimeSignature.style = #'numbered
  % \set Score.extraNatural = ##f
}

rightHandUpper = \relative { 
  
}

rightHandLower = \relative {
  
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  
}

leftHandLower = \relative {
  
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  % TODO remove
  % \override TextScript.Y-offset = #-0.5
  % \override Hairpin.after-line-breaking = ##f
  \override DynamicTextSpanner.style = #'none
  
}

pedal = {
  % TODO None
}

tempi = {
  % TODO \set Score.tempoHideNote = ##t
  
}

forceBreaks = {
  % page 1
  
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
