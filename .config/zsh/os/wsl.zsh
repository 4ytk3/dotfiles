# Open URLs with Windows default browser
[ -x /usr/bin/wslview ] && export BROWSER="/usr/bin/wslview"

# Java (typical Ubuntu path)
if [ -d "/usr/lib/jvm/java-17-openjdk-amd64" ]; then
  export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
  PATH="$PATH:$JAVA_HOME/bin"
fi

# Qt plugin path (needed by some GUI tools)
export QT_QPA_PLATFORM_PLUGIN_PATH="/usr/lib/x86_64-linux-gnu/qt5/plugins"

