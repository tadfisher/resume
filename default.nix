{ lib, runCommand, texlive }:
let
  texDist = texlive.combine (with texlive; {
    inherit
      scheme-medium
      capt-of
      fontawesome
      fontaxes
      moderncv
      roboto
      upquote
      wrapfig;
  });
in
runCommand "resume.pdf" {} ''
  ${texDist}/bin/pdflatex ${./resume.tex}
  mv *.pdf $out
''
