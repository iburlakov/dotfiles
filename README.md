**Initial setup: "bare repo"**

Bare repo approach doesn't require symlinks:

```bash
# 1. Initialize a bare repo in your home directory
git init --bare $HOME/.dotfiles

# 2. Create an alias to interact with it
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# 3. Hide untracked files so `dotfiles status` isn't noisy
dotfiles config --local status.showUntrackedFiles no

# 4. Add the alias to your .zshrc so it persists
echo "alias dotfiles='git --git-dir=\$HOME/.dotfiles/ --work-tree=\$HOME'" >> $HOME/.zshrc
```

Then `dotfiles` could be used like `git`:

```bash
dotfiles add ~/.zshrc
dotfiles commit -m "add zshrc"
dotfiles remote add origin git@github.com:youruser/dotfiles.git
dotfiles push -u origin main
```

**Restoring on a new machine:**

```bash
git clone --bare git@github.com:youruser/dotfiles.git $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
```
