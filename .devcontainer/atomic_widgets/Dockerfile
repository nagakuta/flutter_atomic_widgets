# Base image
FROM dart:2.17-sdk

# Maintainer
LABEL maintainer="nagakuta <nagakuta0314+github@gmail.com>"

# Workdir
WORKDIR /workspace/atomic_widget

# Install Flutter
ARG PATH=/root/.pub-cache/bin:$PATH
ARG FLUTTER_VERSION=3.0.1
RUN dart pub global activate fvm --verbose && \
    fvm doctor --verbose && \
    fvm install $FLUTTER_VERSION --verbose && \
    fvm use --force $FLUTTER_VERSION --verbose && \
    fvm flutter config --enable-web --enable-linux-desktop --enable-macos-desktop --enable-windows-desktop --enable-android --enable-ios --enable-fuchsia && \
    # fvm flutter precache --verbose && \
    fvm flutter doctor --verbose

# Set paths
ENV FVM_ROOT=/root/.pub-cache
ENV PATH $FVM_ROOT/bin:$PATH
