# dotfiles

First, clone this repository:

```
git clone https://github.com/kkato1030/dotfiles ~/.dotfiles
```

if git don't work, try this command:

```
xcode-select --install
```

'Install Command Line Developer Tools' will be launched (in Dock), push **Install**.

Next, run bootstrap.sh

```
cd ~/.dotfiles
./bootstrap
```

Next, Sign in to 1Password.App and open **Developer > Settings**, enable this:

- **SSH Agent**
- **Integrate with 1Password CLI**

Next, Sign in to 1password-cli

```
op signin
```

Next, check github access:

```
ssh -T git@github.com
```

Other settings:

- enable tap click
- change display font size
