function fish_prompt
    set_color '#FFAA1D'
    echo -n (whoami)
    set_color white
    echo -n " @ "
    set_color '#FFAA1D'
    echo -n "macbook "
    set_color '#6FC0DB'
    echo -n (prompt_pwd)
    set_color '#FFAA1D'
    echo -n " ♠ "
    set_color normal
end
