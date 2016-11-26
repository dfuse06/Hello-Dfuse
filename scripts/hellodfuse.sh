#!/bin/sh
  CL_BLU="\033[34m"
  CL_RST="\033[0m"

  echo -e ${CL_BLU}"                                                          ${CL_BLU}";
  echo -e ${CL_BLU}" _____     _ _        ____      _____ _____ _____ _____   ${CL_BLU}";
  echo -e ${CL_BLU}"|  |  |___| | |___   |    \ ___|   __|  |  |   __|   __|  ${CL_BLU}";
  echo -e ${CL_BLU}"|     | -_| | | . |  |  |  |___|   __|  |  |__   |   __|  ${CL_BLU}";
  echo -e ${CL_BLU}"|__|__|___|_|_|___|  |____/    |__|  |_____|_____|_____|  ${CL_BLU}";
  echo -e ${CL_BLU}"                                                          ${CL_RST}";
  
while true
do 
  PS3='What would you like to do today?:'
  options=("Build ls990 clean" "Build flounder clean" "Build ls990 dirty" "Build flounder dirty" "Build ls990 clobber" "Build flounder clobber" "Build ls990 bootimage" "Build flounder bootimage" "Checkout ls990 gsm tree" "Checkout ls990 cdma tree" "Remove source & sync" "Quit")
  select opt in "${options[@]}"
do
    case $opt in
        "Build ls990 clean")
            CL_BLU="\033[34m"
            CL_RST="\033[0m"

            echo -e ${CL_BLU}"████████╗███████╗███████╗██╗      █████╗     ██╗     ███████╗ █████╗  █████╗  ██████╗ ${CL_BLU}";
            echo -e ${CL_BLU}"╚══██╔══╝██╔════╝██╔════╝██║     ██╔══██╗    ██║     ██╔════╝██╔══██╗██╔══██╗██╔═████╗${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   █████╗  ███████╗██║     ███████║    ██║     ███████╗╚██████║╚██████║██║██╔██║${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   ██╔══╝  ╚════██║██║     ██╔══██║    ██║     ╚════██║ ╚═══██║ ╚═══██║████╔╝██║${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   ███████╗███████║███████╗██║  ██║    ███████╗███████║ █████╔╝ █████╔╝╚██████╔╝${CL_BLU}";
            echo -e ${CL_BLU}"   ╚═╝   ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝    ╚══════╝╚══════╝ ╚════╝  ╚════╝  ╚═════╝ ${CL_BLU}";
            echo -e ${CL_BLU}"                                                                                      ${CL_RST}";
            echo "Building ls990 clean.";
            cd ~/Tesla
            . build/envsetup.sh
            lunch tesla_ls990-userdebug
            make clean
            time make tesla -j8
            mv -f $ANDROID_PRODUCT_OUT/Tesla*.zip ~/roms
            cd
            ;;
        "Build flounder clean")
            CL_BLU="\033[34m"
            CL_RST="\033[0m"
  
            echo -e ${CL_BLU}"████████╗███████╗███████╗██╗      █████╗     ███████╗██╗      ██████╗ ██╗   ██╗███╗   ██╗██████╗ ███████╗██████╗ ${CL_BLU}";
            echo -e ${CL_BLU}"╚══██╔══╝██╔════╝██╔════╝██║     ██╔══██╗    ██╔════╝██║     ██╔═══██╗██║   ██║████╗  ██║██╔══██╗██╔════╝██╔══██╗${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   █████╗  ███████╗██║     ███████║    █████╗  ██║     ██║   ██║██║   ██║██╔██╗ ██║██║  ██║█████╗  ██████╔╝${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   ██╔══╝  ╚════██║██║     ██╔══██║    ██╔══╝  ██║     ██║   ██║██║   ██║██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   ███████╗███████║███████╗██║  ██║    ██║     ███████╗╚██████╔╝╚██████╔╝██║ ╚████║██████╔╝███████╗██║  ██║${CL_BLU}";
            echo -e ${CL_BLU}"   ╚═╝   ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝    ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝${CL_BLU}";
            echo -e ${CL_BLU}"                                                                                                                 ${CL_RST}";
            echo "Cleaning,syncing,lunching,and building.Zip with be in home/roms folder."; 
            . build/envsetup.sh
            make clean
            lunch tesla_flounder-userdebug
            time make tesla -j8
            mv -f $ANDROID_PRODUCT_OUT/Tesla*.zip ~/roms
            cd
            ;;
        "Build ls990 dirty")
             CL_BLU="\033[34m"
             CL_RST="\033[0m"

            echo -e ${CL_BLU}"████████╗███████╗███████╗██╗      █████╗     ██╗     ███████╗ █████╗  █████╗  ██████╗ ${CL_BLU}";
            echo -e ${CL_BLU}"╚══██╔══╝██╔════╝██╔════╝██║     ██╔══██╗    ██║     ██╔════╝██╔══██╗██╔══██╗██╔═████╗${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   █████╗  ███████╗██║     ███████║    ██║     ███████╗╚██████║╚██████║██║██╔██║${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   ██╔══╝  ╚════██║██║     ██╔══██║    ██║     ╚════██║ ╚═══██║ ╚═══██║████╔╝██║${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   ███████╗███████║███████╗██║  ██║    ███████╗███████║ █████╔╝ █████╔╝╚██████╔╝${CL_BLU}";
            echo -e ${CL_BLU}"   ╚═╝   ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝    ╚══════╝╚══════╝ ╚════╝  ╚════╝  ╚═════╝ ${CL_BLU}";
            echo -e ${CL_BLU}"                                                                                      ${CL_RST}";
            echo "Building ls990 dirty."; 
            cd ~/Tesla
            . build/envsetup.sh
            lunch tesla_ls990-userdebug
            time make tesla -j8
            mv -f $ANDROID_PRODUCT_OUT/Tesla*.zip ~/roms
            cd
            ;;
         "Build flounder dirty")
            CL_BLU="\033[34m"
            CL_RST="\033[0m"
  
            echo -e ${CL_BLU}"████████╗███████╗███████╗██╗      █████╗     ███████╗██╗      ██████╗ ██╗   ██╗███╗   ██╗██████╗ ███████╗██████╗ ${CL_BLU}";
            echo -e ${CL_BLU}"╚══██╔══╝██╔════╝██╔════╝██║     ██╔══██╗    ██╔════╝██║     ██╔═══██╗██║   ██║████╗  ██║██╔══██╗██╔════╝██╔══██╗${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   █████╗  ███████╗██║     ███████║    █████╗  ██║     ██║   ██║██║   ██║██╔██╗ ██║██║  ██║█████╗  ██████╔╝${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   ██╔══╝  ╚════██║██║     ██╔══██║    ██╔══╝  ██║     ██║   ██║██║   ██║██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   ███████╗███████║███████╗██║  ██║    ██║     ███████╗╚██████╔╝╚██████╔╝██║ ╚████║██████╔╝███████╗██║  ██║${CL_BLU}";
            echo -e ${CL_BLU}"   ╚═╝   ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝    ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝${CL_BLU}";
            echo -e ${CL_BLU}"                                                                                                                 ${CL_RST}";
            echo "Building flounder dirty."; 
            cd ~/Tesla
            . build/envsetup.sh
            lunch tesla_flounder-userdebug
            time make tesla -j8
            mv -f $ANDROID_PRODUCT_OUT/Tesla*.zip ~/roms
            cd
            ;;
        "Build ls990 clobber")
            CL_BLU="\033[34m"
            CL_RST="\033[0m"

            echo -e ${CL_BLU}"████████╗███████╗███████╗██╗      █████╗     ██╗     ███████╗ █████╗  █████╗  ██████╗ ${CL_BLU}";
            echo -e ${CL_BLU}"╚══██╔══╝██╔════╝██╔════╝██║     ██╔══██╗    ██║     ██╔════╝██╔══██╗██╔══██╗██╔═████╗${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   █████╗  ███████╗██║     ███████║    ██║     ███████╗╚██████║╚██████║██║██╔██║${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   ██╔══╝  ╚════██║██║     ██╔══██║    ██║     ╚════██║ ╚═══██║ ╚═══██║████╔╝██║${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   ███████╗███████║███████╗██║  ██║    ███████╗███████║ █████╔╝ █████╔╝╚██████╔╝${CL_BLU}";
            echo -e ${CL_BLU}"   ╚═╝   ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝    ╚══════╝╚══════╝ ╚════╝  ╚════╝  ╚═════╝ ${CL_BLU}";
            echo -e ${CL_BLU}"                                                                                      ${CL_RST}";
            echo "Building ls990 clean.";
            cd ~/Tesla
            . build/envsetup.sh
            lunch tesla_ls990-userdebug
            make clobber
            time make tesla -j8
            mv -f $ANDROID_PRODUCT_OUT/Tesla*.zip ~/roms
            cd
            ;;
        "Build flounder clobber")
            CL_BLU="\033[34m"
            CL_RST="\033[0m"
  
            echo -e ${CL_BLU}"████████╗███████╗███████╗██╗      █████╗     ███████╗██╗      ██████╗ ██╗   ██╗███╗   ██╗██████╗ ███████╗██████╗ ${CL_BLU}";
            echo -e ${CL_BLU}"╚══██╔══╝██╔════╝██╔════╝██║     ██╔══██╗    ██╔════╝██║     ██╔═══██╗██║   ██║████╗  ██║██╔══██╗██╔════╝██╔══██╗${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   █████╗  ███████╗██║     ███████║    █████╗  ██║     ██║   ██║██║   ██║██╔██╗ ██║██║  ██║█████╗  ██████╔╝${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   ██╔══╝  ╚════██║██║     ██╔══██║    ██╔══╝  ██║     ██║   ██║██║   ██║██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗${CL_BLU}";
            echo -e ${CL_BLU}"   ██║   ███████╗███████║███████╗██║  ██║    ██║     ███████╗╚██████╔╝╚██████╔╝██║ ╚████║██████╔╝███████╗██║  ██║${CL_BLU}";
            echo -e ${CL_BLU}"   ╚═╝   ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝    ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝${CL_BLU}";
            echo -e ${CL_BLU}"                                                                                                                 ${CL_RST}";
            echo "Cleaning,syncing,lunching,and building.Zip with be in home/roms folder."; 
            . build/envsetup.sh
            make clobber
            lunch tesla_flounder-userdebug
            time make tesla -j8
            mv -f $ANDROID_PRODUCT_OUT/Tesla*.zip ~/roms
            cd
            ;;           
        "Build ls990 bootimage")
          . build/envsetup.sh
            make clobber
            lunch tesla_ls990-userdebug
            time make bootimage -j8
            mv -f $ANDROID_PRODUCT_OUT/Tesla*.zip ~/roms
            cd
            ;;
         "Build flounder bootimage")
          . build/envsetup.sh
            make clobber
            lunch tesla_flounder-userdebug
            time make bootimage -j8
            mv -f $ANDROID_PRODUCT_OUT/Tesla*.zip ~/roms
            cd
            ;;
        "Checkout ls990 gsm tree")
            cd ~/Tesla/device/lge/g3
            git checkout n7.1
            git checkout n7.1_gsm
            cd ~/Tesla
            ;;
        "Checkout ls990 cdma tree")
            cd ~/Tesla/device/lge/g3
            git checkout n7.1
            cd ~/Tesla
            ;;
        "Remove source & sync")
           rm -rf ~/Tesla/*
           cd ~/Tesla
           repo sync --force-sync -j4
           cd ~/roms
           cp tesla.devices ~/Tesla/vendor/tesla
           cd ~/Tesla
           ;;           
        "Quit")
            exit
            ;;
        *) echo invalid option;;
    esac
done
done

