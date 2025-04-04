eval "$(/opt/homebrew/bin/brew shellenv)"

export EDITOR="nvim"

# homebrew
export HOMEBREW_AUTO_UPDATE_SECS="86400"

# dotnet
export PATH="$PATH:/Users/user/.dotnet/tools"

# android studio
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-21.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
