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
-hw {/home/andrewcapon/fpga/ArtixA7/AudioPlayground/VivadoProject/AudioPlatform_wrapper.xsa}\
-proc {processor_microblaze_0} -os {standalone} -out {/home/andrewcapon/fpga/ArtixA7/AudioPlayground/VitisWS}

platform write
platform generate -domains 
platform active {AudioPlatformStandalone}
platform generate
