function fish_prompt
    set_color green; echo -n (whoami)
    set_color normal; echo -n ' ['
    set_color blue; echo -n (basename (prompt_pwd))
    set_color red; echo -n (__fish_git_prompt)
    set_color normal; echo -n '] '
    echo -n '＜コ8彡 '
    echo -n '$ '
end