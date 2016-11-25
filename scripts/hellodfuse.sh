#!/bin/sh
  CL_BLU="\033[34m"
  CL_RST="\033[0m"

  echo -e ${CL_BLU}"                                                          ${CL_BLU}";
  echo -e ${CL_BLU}" _____     _ _        ____      _____ _____ _____ _____   ${CL_BLU}";
  echo -e ${CL_BLU}"|  |  |___| | |___   |    \ ___|   __|  |  |   __|   __|  ${CL_BLU}";
  echo -e ${CL_BLU}"|     | -_| | | . |  |  |  |___|   __|  |  |__   |   __|  ${CL_BLU}";
  echo -e ${CL_BLU}"|__|__|___|_|_|___|  |____/    |__|  |_____|_____|_____|  ${CL_BLU}";
  echo -e ${CL_BLU}"                                                          ${CL_RST}";

  PS3='What would you like to do today?:'
  options=("Build ls990 clean" "Build flounder clean" "Build ls990 dirty" "Build flounder dirty" "Sync ls990 gsm" "Sync ls990 cdma" "Sync flounder" "Quit")
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
            echo "Cleaning,syncing,lunching,and building.Zip with be in home/roms folder."; 
            rm -rf ~/Tesla/*
            cd ~/Tesla
            repo sync --force-sync -j4
            cd ~/Tesla/device
            git clone https://github.com/dfuse06/device_lge_ls990.git lge/ls990
            cd ~/Tesla/device/lge
            git clone https://github.com/Tesla-M-Devices/android_device_lge_g3-common.git g3-common
            cd ~/Tesla 
            git clone https://github.com/GZR-Kernels/fusebox_kernel_lge_g3.git kernel/lge/g3
            cd ~/Tesla/vendor 
            git clone https://github.com/dfuse06/proprietary_vendor_lge_ls990.git lge
            cd ~/roms
            cp tesla.devices ~/Tesla/vendor/tesla
            cd ~/Tesla
            . build/envsetup.sh
            lunch tesla_ls990-userdebug
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
            rm -rf ~/Tesla/*
            cd ~/Tesla
            repo sync --force-sync -j4
            cd ~/Tesla/device
            git clone https://github.com/dfuse06/device_htc_flounder.git htc/flounder
            cd ~/Tesla 
            git clone https://github.com/GZR-Kernels/fusebox_kernel_htc_flounder.git kernel/htc/flounder
            cd ~/Tesla/vendor 
            git clone https://github.com/DirtyUnicorns/android_vendor_htc.git htc
            cd ~/Tesla
            . build/envsetup.sh
            lunch tesla_flounder-userdebug
            time make tesla -j8
            mv -f $ANDROID_PRODUCT_OUT/Tesla*.zip ~/roms
            cd
            ;;
        "Build ls990 dirty")
            cd ~/roms
            cp tesla.devices ~/Tesla/vendor/tesla
            cd ~/Tesla
            . build/envsetup.sh
            lunch tesla_ls990-userdebug
            time make tesla -j8
            mv -f $ANDROID_PRODUCT_OUT/Tesla*.zip ~/roms
            cd
            ;;
         "Build flounder dirty")
            cd ~/Tesla
            . build/envsetup.sh
            lunch tesla_flounder-userdebug
            time make tesla -j8
            mv -f $ANDROID_PRODUCT_OUT/Tesla*.zip ~/roms
            cd
            ;;
        "Sync ls990 gsm")
           rm -rf ~/Tesla/device/lge
           rm -rf ~/Tesla/kernel/lge
           rm -rf ~/Tesla/vendor/lge
           cd ~/Tesla
           cd ~/Tesla/device
           git clone https://github.com/dfuse06/device_lge_ls990.git lge/ls990
           cd ~/Tesla/device/lge
           git clone https://github.com/Tesla-M-Devices/android_device_lge_g3-common.git g3-common
           cd ~/Tesla 
           git clone https://github.com/GZR-Kernels/fusebox_kernel_lge_g3 kernel/lge/g3
           cd ~/Tesla/vendor 
           git clone https://github.com/dfuse06/proprietary_vendor_lge_ls990.git lge
           cd ~/roms
           cp tesla.devices ~/Tesla/vendor/tesla
           cd ~/Tesla
           ;;
        "Sync ls990 cdma")
           rm -rf ~/Tesla/device/lge
           rm -rf ~/Tesla/kernel/lge
           rm -rf ~/Tesla/vendor/lge
           cd ~/Tesla
           cd ~/Tesla/device
           git clone https://github.com/Tesla-M-Devices/device_lge_ls990.git lge/ls990
           cd ~/Tesla/device/lge
           git clone https://github.com/Tesla-M-Devices/android_device_lge_g3-common.git g3-common
           cd ~/Tesla 
           git clone https://github.com/GZR-Kernels/fusebox_kernel_lge_g3 kernel/lge/g3
           cd ~/Tesla/vendor 
           git clone https://github.com/dfuse06/proprietary_vendor_lge_ls990.git lge
           cd ~/roms
           cp tesla.devices ~/Tesla/vendor/tesla
           cd ~/Tesla
           ;;
        "Sync flounder")
          cd ~/Tesla/device
          git clone https://github.com/dfuse06/device_htc_flounder.git htc/flounder
          cd ~/Tesla 
          git clone https://github.com/GZR-Kernels/fusebox_kernel_htc_flounder.git kernel/htc/flounder
          cd ~/Tesla/vendor 
          git clone https://github.com/DirtyUnicorns/android_vendor_htc.git htc
          cd ~/Tesla
          ;;
        "Quit")
            exit
            ;;
        *) echo invalid option;;
    esac
done
