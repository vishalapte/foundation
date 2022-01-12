# OSX

## Hidden Commands

### avconvert

```
avconvert --source <filename.mov> --output <filename.mp4> --preset Preset1920x1080
```

Source: https://stackoverflow.com/a/45112179

## User Management

### Disable a user

```
sudo chsh -s /usr/bin/false username
```

### Enable a user

```
sudo chsh -s /bin/bash username
```

### Hide a user account

Hide the user account

```
sudo dscl . create /Users/username isHidden 1
```

Show the user account

```
sudo dscl . create /Users/username isHidden 1
```
