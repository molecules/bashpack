setlocal noexpandtab
"colorscheme evening

syntax match Tab /\t/
"hi Tab ctermbg=blue
set tabstop=20
set textwidth=1000
set nowrap

"Set up some shortcuts
iab NAD	NA<TAB>Drift
iab NAA	NA<TAB>Astigmatic
iab NAL	NA<TAB>Low data
