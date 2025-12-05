setws /home/andrewcapon/fpga/ArtixA7/AudioPlayground/VitisWS

catch {platform remove AudioPlatformStandalone}

platform create -name {AudioPlatformStandalone} \
	-hw {/home/andrewcapon/fpga/ArtixA7/AudioPlayground/VivadoProject/AudioPlatform_wrapper.xsa} \
	-proc {processor_microblaze_0} \
	-os {standalone}
	
platform write

platform read {/home/andrewcapon/fpga/ArtixA7/AudioPlayground/VitisWS/AudioPlatformStandalone/platform.spr}

platform active {AudioPlatformStandalone}

bsp regenerate
platform generate


