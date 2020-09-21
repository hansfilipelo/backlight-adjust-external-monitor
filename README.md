# Control display backlight

Install i2c-tools and enable kernel module

```
pacman -S i2c-tools
sudo modprobe i2c-dev
```

Getters and setters:

```
sudo ddcutil getvcp 10
sudo ddcutil setvcp 10 PERCENTAGE
```


