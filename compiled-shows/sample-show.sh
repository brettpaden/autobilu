#!/bin/bash
# show duration of 365

function countdown_sleep() {
  local duration=$1
  local next_command=$2
  local countdown=$duration

  while ((countdown > 0)); do
    echo -ne "NEXT:       $next_command:  [ $countdown ]\033[0K\r"
    sleep 1
    ((countdown--))
  done
  echo -ne "\033[0K"
}

echo 'EXECUTING:  area1-cue01 (rack 1)'
sudo rpitx -m IQ -i commands/area1-cue01.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 1 'area1-cue09 (Killer Moth 1)'
echo 'EXECUTING:  area1-cue09 (Killer Moth 1)'
sudo rpitx -m IQ -i commands/area1-cue09.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 13 'area2-cue04 (liquid sword)'
echo 'EXECUTING:  area2-cue04 (liquid sword)'
sudo rpitx -m IQ -i commands/area2-cue04.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 32 'area3-cue03 (ultaviolet 1)'
echo 'EXECUTING:  area3-cue03 (ultaviolet 1)'
sudo rpitx -m IQ -i commands/area3-cue03.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 14 'area1-cue02 (rack 2)'
echo 'EXECUTING:  area1-cue02 (rack 2)'
sudo rpitx -m IQ -i commands/area1-cue02.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 4 'area3-cue01 (unicorn puke 1)'
echo 'EXECUTING:  area3-cue01 (unicorn puke 1)'
sudo rpitx -m IQ -i commands/area3-cue01.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 9 'area3-cue05 (unicorn puke 3)'
echo 'EXECUTING:  area3-cue05 (unicorn puke 3)'
sudo rpitx -m IQ -i commands/area3-cue05.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 22 'area3-cue02 (unicorn puke 2)'
echo 'EXECUTING:  area3-cue02 (unicorn puke 2)'
sudo rpitx -m IQ -i commands/area3-cue02.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 5 'area3-cue06 (unicorn puke 4)'
echo 'EXECUTING:  area3-cue06 (unicorn puke 4)'
sudo rpitx -m IQ -i commands/area3-cue06.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 15 'area1-cue05 (rack 3)'
echo 'EXECUTING:  area1-cue05 (rack 3)'
sudo rpitx -m IQ -i commands/area1-cue05.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 1 'area2-cue12 (infinity box 2)'
echo 'EXECUTING:  area2-cue12 (infinity box 2)'
sudo rpitx -m IQ -i commands/area2-cue12.wav -f 434004 1>>rpitx.log 2>>rpitx.log
echo 'EXECUTING:  area2-cue04 (liquid sword)'
sudo rpitx -m IQ -i commands/area2-cue04.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 27 'area2-cue01 (butteryfly sword)'
echo 'EXECUTING:  area2-cue01 (butteryfly sword)'
sudo rpitx -m IQ -i commands/area2-cue01.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 29 'area1-cue03 (rack 4)'
echo 'EXECUTING:  area1-cue03 (rack 4)'
sudo rpitx -m IQ -i commands/area1-cue03.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 2 'area3-cue12 (skyfall red)'
echo 'EXECUTING:  area3-cue12 (skyfall red)'
sudo rpitx -m IQ -i commands/area3-cue12.wav -f 434004 1>>rpitx.log 2>>rpitx.log
echo 'EXECUTING:  area2-cue09 (skyfall green)'
sudo rpitx -m IQ -i commands/area2-cue09.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 32 'area2-cue08 (lightening sword)'
echo 'EXECUTING:  area2-cue08 (lightening sword)'
sudo rpitx -m IQ -i commands/area2-cue08.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 23 'area4-cue01 (sound and light)'
echo 'EXECUTING:  area4-cue01 (sound and light)'
sudo rpitx -m IQ -i commands/area4-cue01.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 13 'area2-cue12 (infinity box 2)'
echo 'EXECUTING:  area2-cue12 (infinity box 2)'
sudo rpitx -m IQ -i commands/area2-cue12.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 3 'area1-cue06 (rack 5)'
echo 'EXECUTING:  area1-cue06 (rack 5)'
sudo rpitx -m IQ -i commands/area1-cue06.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 7 'area1-cue12 (Killer Moth 2)'
echo 'EXECUTING:  area1-cue12 (Killer Moth 2)'
sudo rpitx -m IQ -i commands/area1-cue12.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 24 'area4-cue09 (out with a bang)'
echo 'EXECUTING:  area4-cue09 (out with a bang)'
sudo rpitx -m IQ -i commands/area4-cue09.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 18 'area1-cue04 (rack 6)'
echo 'EXECUTING:  area1-cue04 (rack 6)'
sudo rpitx -m IQ -i commands/area1-cue04.wav -f 434004 1>>rpitx.log 2>>rpitx.log
countdown_sleep 13 'area3-cue07 (ultaviolet 2)'
echo 'EXECUTING:  area3-cue07 (ultaviolet 2)'
sudo rpitx -m IQ -i commands/area3-cue07.wav -f 434004 1>>rpitx.log 2>>rpitx.log
echo 'EXECUTING:  area4-cue05 (ka-kaw)'
sudo rpitx -m IQ -i commands/area4-cue05.wav -f 434004 1>>rpitx.log 2>>rpitx.log
