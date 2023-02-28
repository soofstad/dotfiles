set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_show_informative_status 1
set __fish_git_prompt_showuntrackedfiles 1
set __fish_git_prompt_showdirtystate 1

function fish_prompt --description 'Write out the prompt'
   printf '%s' (set_color cyan) (whoami)
   printf '%s' (set_color normal) (echo ' |')
   printf '%s' (set_color white) (__fish_git_prompt)
   printf '%s' (set_color 3399ff) (__kube_prompt)
   printf '%s' (set_color green) (prompt_pwd)
   printf '%s' (set_color brwhite) (echo \U27EB)
end
