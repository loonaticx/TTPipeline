
cd _output_dynamic


:: lazy way of moving anims
cp ../amoreEel-swim/amoreEel-swim.egg .
cp ../balloonFish-swim/balloonFish-swim.egg .
cp ../catFish-swim/catFish-swim.egg .
cp ../dogFish-swim/dogFish-swim.egg .
cp ../frozenFish-swim/frozenFish-swim.egg .
cp ../starFish-swim/starFish-swim.egg .
cp ../nurseShark-swim/nurseShark-swim.egg .
cp ../moonFish-swim/moonFish-swim.egg .
cp ../poolShark-swim/poolShark-swim.egg .

:: integral part of the process
:: egg-optchar -TR 0,180,0 -TS 0.25 -keepall -inplace *.egg
egg-optchar -keepall -inplace -dart structured *-zero.egg

egg-optchar starFish-zero.egg -inplace -zero skeleton_GRP -flag 'starFish_?eye'=transparent -flag 'starFish_mouth'=transparent -flag 'starFish_mic_billboard'=transparent 
egg-optchar starFish-swim.egg -inplace -zero skeleton_GRP -flag 'starFish_?eye'=transparent -flag 'starFish_mouth'=transparent -flag 'starFish_mic_billboard'=transparent 

egg-optchar frozenFish-zero.egg -inplace -flag 'polySurface*'=transparent
egg-optchar frozenFish-swim.egg -inplace -flag 'polySurface*'=transparent

egg-optchar nurseShark-swim.egg -inplace -flag 'eyes'=transparent
egg-optchar nurseShark-zero.egg -inplace -flag 'eyes'=transparent

egg-optchar moonFish-zero.egg -inplace -flag 'moonFish_eye?'=transparent1 -flag 'moonFish_glass'=transparent2
egg-optchar moonFish-swim.egg -inplace -flag 'moonFish_eye?'=transparent1 -flag 'moonFish_glass'=transparent2

egg-optchar poolShark-zero.egg -inplace -flag 'eyes'=transparent
egg-optchar poolShark-swim.egg -inplace -flag 'eyes'=transparent

pause