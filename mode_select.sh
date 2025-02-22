function native() {
    echo ""
	bash <(curl -Ls https://github.com/hogmedioscorched/sm64coopdx-builder/raw/main/sm64coopdx.sh)
}

function sixtyfour() {
    echo ""
	bash <(curl -Ls https://github.com/hogmedioscorched/sm64coopdx-builder/raw/main/sm64coopdx64.sh)
}

function thirtytwo() {
    echo ""
	bash <(curl -Ls https://github.com/hogmedioscorched/sm64coopdx-builder/raw/main/sm64coopdx32.sh)
}

function both() {
    echo ""
	bash <(curl -Ls https://github.com/hogmedioscorched/sm64coopdx-builder/raw/main/sm64coopdx_both_targets.sh)
}

green='\e[32m'
blue='\e[34m'
BYellow='\e[1;33m'
clear='\e[0m'
red='\e[31m'

ColorGreen(){
	echo -ne $green$1$clear
}
ColorBlue(){
	echo -ne $blue$1$clear
}

ColorYellow(){
	echo -ne $BYellow$1$clear
}

ColorRed(){
	echo -ne $red$1$clear
}

menu(){
echo -ne "
$(ColorYellow '====== Coop Deluxe Builder ======')
$(ColorGreen '1)') $(ColorRed 'Normal')
$(ColorGreen '2)') $(ColorRed '64 Bits')
$(ColorGreen '3)') $(ColorRed '32 Bits')
$(ColorGreen '4)') $(ColorRed 'Experimental | Both')
$(ColorGreen '0)') $(ColorRed 'Exit')
$(ColorBlue 'Choose an option:') "
        read a
        case $a in
	        1) native ;;
	        2) sixtyfour ;;
	        3) thirtytwo ;;
	        4) both ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; menu;;
        esac
}

menu