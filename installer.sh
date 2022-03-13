set -e
clear
echo "====================="
echo "Faliactyl Installer"
echo "====================="
echo "UnOfficial install Script for Faliactyl"
echo "Works with Ubuntu/Debian"
echo ========================================

install_options(){
    echo "Please select your installation option:"
    echo "[1] Full Fresh Faliactyl Install (Dependencies, Files, Configuration)"
    echo "[2] Install the Dependencies."
    echo "[3] Install the Files."
    echo "[4] Configure Settings."
    echo "[5] Create and configure a reverse proxy."
    echo "========================================"
    read choice
    case $choice in
        1 ) installoption=1
            dependercy_install
            file_install
            settings_configuration
            reverseproxy_configuration
            ;;
        2 ) installoption=2
            dependercy_install
            ;;
        3 ) installoption=3
            file_install
            ;;
        4 ) installoption=4
            settings_configuration
            ;;
        5 ) installoption=5
            reverseproxy_configuration
            ;;
        6 ) installoption=6
            update_check
            ;;
        * ) output "You did not enter a valid selection."
            install_options
    esac
}
