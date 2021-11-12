sed -i 's/Enter password: //' grub.txt
sed -i 's/Reenter password: //' grub.txt
sed -i 's/PBKDF2 hash of your password is //' grub.txt
paste -sd "" grub.txt > clip
cat clip > grub.txt

sudo chmod 777 //etc/grub.d/00_header
echo "cat <<EOF" >> //etc/grub.d/00_header
echo "set superusers="root"" >> //etc/grub.d/00_header
file1=`cat grub.txt`
echo "password pbkdf2 root '"$file1"'" >> //etc/grub.d/00_header
echo "EOF" >> //etc/grub.d/00_header
sudo chmod 700 //etc/grub.d/00_header
sudo update-grub

sudo chmod 777 //etc/default/grub
sed -i 's/apparmor=0//' //etc/default/grub
sudo chmod 700 //etc/default/grub

aa-enforce //etc/apparmor.d/*
