@echo off
ffmpeg -y ^
-f concat -safe 0 -i clips.txt ^
-i audio.m4a ^
-c:v libx264 -preset slow -pix_fmt yuv420p ^
-c:a aac -shortest ^
output.mp4
pause
