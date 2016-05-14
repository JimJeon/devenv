# COPY ./dotfiles to ~/.dotfiles
if [ -d "~/.dotfiles" ]
then
    echo "There already .dotfiles folder exists."
    echo "Do you want to remove orginal folder? (y/n)"
    read user_input

    case $user_input in
        "y" || "yes" || "Y") rm -rf "~/.dotfiles" ;;
        "n" || "no"  || "N") 
cp -r ./dotfiles ~/.dotfiles

for DOTS in "$DOTFILES_DIRECTORY"
do
    [ -f "$DOTS" ]
