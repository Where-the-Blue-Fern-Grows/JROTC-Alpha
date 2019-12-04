echo -e "JROTC$$cp18alpha\nJROTC$$cp18alpha" | grub-mkpasswd-pbkdf2 > grub.txt
sed -i 's/Enter password: //' grub.txt
sed -i 's/Reenter password: //' grub.txt
sed -i 's/PBKDF2 hash of your password is //' grub.txt
paste -sd "" grub.txt > clip
cat clip > grub.txt

sudo chmod 777 //etc/grub.d/00_header
echo "cat <<EOF" >> //etc/grub.d/00_header
echo "set superusers="root"" >> //etc/grub.d/00_header
echo "password pbkdf2 root " >> //etc/grub.d/00_header
file1=`cat grub.txt`
cat grub.txt | sed -i '$Ps/$/'"$file1"'/}' //etc/grub.d/00_header
