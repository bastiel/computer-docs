# Gnome Boxes Workaround 
This problem occured after I tried to clone a VM on Boes. There was an infinite loading screen, and I assumed it was safe to close and restart. I was wrong. It kept crashing upon opening, and it continued to crash even after uninstalling and purging the app. 
The following errors popped up when launching Boxes in terminal or some variation:

```
(gnome-boxes:15779): Gtk-WARNING **: 22:12:33.530: GtkFlowBox with a model will ignore sort and filter functions
(gnome-boxes:15779): Gtk-WARNING **: 22:12:33.531: GtkListBox with a model will ignore sort and filter functions
(gnome-boxes:15779): Boxes-WARNING **: 22:12:33.786: libvirt-machine.vala:101: Failed to disable 3D Acceleration
(gnome-boxes:15779): Boxes-CRITICAL **: 22:12:33.796: boxes_vm_importer_get_source_media: assertion 'self != NULL' failed Segmentation fault (core dumped)
```
---
# Reproduction
1. Create a VM of Windows 10
2. Clone the VM
3. While it's "cloning," exit out of Boxes
4. Relaunch Boxes
---
# Solution
Note: Not sure if "correct" solution. 
1. Go to /home/user/.config
2. Rename or delete `libvirt` folder
---
# Notes
- Find out what `libvirt` is 
