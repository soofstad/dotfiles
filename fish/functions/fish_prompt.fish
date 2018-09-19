set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

function fish_prompt --description 'Write out the prompt'     
   printf '%s' (set_color yellow) (whoami)
   printf '%s' (set_color normal) (echo '@')
   printf '%s' (set_color cyan) (hostname)
   printf '%s' (set_color normal) (echo ':')
   printf '%s' (set_color white) (__fish_git_prompt)
   printf '%s' (set_color green)  (prompt_pwd)
   printf '%s' (set_color normal) (echo '>')
end

