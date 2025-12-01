# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/andrewcapon/fpga/ArtixA7/AudioPlayground/VitisWS/AudioPlatformStandalone/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/andrewcapon/fpga/ArtixA7/AudioPlayground/VitisWS/AudioPlatformStandalone/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {AudioPlatformStandalone}\
-hw {/home/andrewcapon/fpga/ArtixA7/AudioPlayground/AudioPlaygroundVivadoProject/AudioPlayground_wrapper_10_24.xsa}\
-proc {processor_microblaze_0} -os {standalone} -out {/home/andrewcapon/fpga/ArtixA7/AudioPlayground/VitisWS}

platform write
platform generate -domains 
platform generate
platform config -updatehw {/home/andrewcapon/fpga/ArtixA7/AudioPlayground/AudioPlaygroundVivadoProject/AudioPlayground_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/andrewcapon/fpga/ArtixA7/AudioPlayground/AudioPlaygroundVivadoProject/AudioPlayground_wrapper_10_45.xsa}
platform generate -domains 
platform config -updatehw {/home/andrewcapon/fpga/ArtixA7/AudioPlatform/AudioPlatformModular_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/andrewcapon/fpga/ArtixA7/AudioPlatform/AudioPlatformDMA_wrapper_06_30.xsa}
platform active {AudioPlatformStandalone}
platform config -updatehw {/home/andrewcapon/fpga/ArtixA7/DmaTest/DmaTestInterconnect_wrapper_11_01.xsa}
platform generate -domains 
platform active {AudioPlatformStandalone}
platform config -updatehw {/home/andrewcapon/fpga/ArtixA7/AudioPlayground/VivadoProject/AudioPlayground.xsa}
platform generate -domains 
platform config -updatehw {/home/andrewcapon/fpga/ArtixA7/AudioPlayground/VivadoProject/AudioPlatform_wrapper.xsa}
platform generate -domains 
