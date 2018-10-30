I decided to reflect the instructions to setup and configure subpixel font hinting as described ( http://blog.andreas-haerter.com/2011/07/18/tune-improve-fedora-fonts-typeface-ubuntu-like-sharp-fonts ) since there seems to be a demand for it.

I think that Fedora with Gnome deserves a nice font, and I love the tweaked font using subpixel font hinting.

I am going to list the commands to achieve the result. For more information, please read the original post.

The command xrdb -query lists your (default) settings. Nice settings (as they are used in Ubuntu) are the following ones:

Xft.dpi: 96
Xft.antialias: 1
Xft.hinting: 1
Xft.hintstyle: hintslight
Xft.rgba: rgb
Xft.lcdfilter: lcddefault

Here is what you do:

1.) For subpixel rendering you need to install freetype-freeworld (sudo dnf install freetype-freeworld) from rpmfusion.

2.) use gnome-tweak-tool to set the hintstyle to slight and anti-aliasing-mode to rGBA.

3.) Activate lcdfilter: Unfortunately, there is no GSettings key for it. You have to create a hidden .Xresource file with the Xft.lcdfilter: lcddefault setting in your home directory. Run echo "Xft.lcdfilter: lcddefault" > ~/.Xresources.

4.) Logoff and logon again, and you will see the changes. Use xrdb -query to display your settings.

Have fun with (what I think is a nicer) Gnome!



SOURCE: https://ask.fedoraproject.org/en/question/64130/how-to-improve-font-rendering-in-gnome-shell/
