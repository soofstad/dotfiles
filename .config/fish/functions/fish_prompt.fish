set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_show_informative_status

function fish_prompt --description 'Write out the prompt'     
   printf '%s' (set_color yellow) (whoami)
   printf '%s' (set_color normal) (echo '@')
   printf '%s' (set_color cyan) (hostname)
   printf '%s' (set_color normal) (echo '|')
   printf '%s' (set_color white) (__fish_git_prompt)
   printf '%s' (set_color 3399ff) (__kube_prompt)
   printf '%s' (set_color green) (prompt_pwd)
   printf '%s' (set_color normal) (echo '$')
end
