# Define custom utilities
# Test for macOS with [ -n "$IS_OSX" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    pip install cmake

    if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
        brew install llvm libomp
        export CC=/usr/local/opt/llvm/bin/clang
        export CXX=/usr/local/opt/llvm/bin/clang++
    fi
}

function run_tests {
    :
}
