for i in eng userdebug user; do
	add_lunch_combo omni_kylevess-${i}
done
#Compile twrp by typing kylevess
function kylevess()
{
    lunch omni_kylevess-userdebug
    if [ $? -eq 0 ]; then
        time mka -j10 recoveryimage
    else
        echo "No such item in brunch menu. Try 'breakfast'"
        return 1
    fi
    return $?
}
