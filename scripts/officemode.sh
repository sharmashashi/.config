#!/bin/bash
open -a "Figma"
sleep 3
aerospace list-windows --focused
aerospace move-node-to-workspace F
sleep 1

open -a "Safari"
sleep 3
aerospace move-node-to-workspace S
sleep 1

open -na "Google Chrome" --args --profile-directory="Profile 3"
sleep 3
aerospace move-node-to-workspace B 
sleep 1

scrcpy &	 
sleep 3
aerospace move left 
aerospace resize width 420
sleep 1
aerospace focus right
