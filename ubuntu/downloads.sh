## now loop through the above array
for i in "https://download.jetbrains.com/webide/PhpStorm-2017.2.3.tar.gz" "https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/android-studio-ide-162.4069837-linux.zip" "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
do
       wget "$i" ~/Downloads/
          # or do whatever with individual element of the array
done      
