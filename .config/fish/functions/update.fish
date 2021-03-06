function update --description "Apt update and upgrade"
    sudo apt update
    sudo apt upgrade -y
    sudo apt autoremove  -y
end
