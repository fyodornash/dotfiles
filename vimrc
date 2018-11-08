execute pathogen#infect()
syntax on
filetype plugin indent on
nmap <F8> :TagbarToggle<CR>
":set csre
function! SetProj(proj)
	if a:proj=="dlib"
		map<C-F12>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -f /home/michael/cpp/dlib/tags /home/michael/cpp/dlib/<CR>
		set tags+=/home/michael/cpp/dlib/tags
		":set csre
		let OmniCpp_ShowPrototypeInAbbr = 1
		let OmniCpp_MayCompleteDot = 1
		:cs add /home/michael/cpp/dlib/cscope.out
	endif
endfunction
