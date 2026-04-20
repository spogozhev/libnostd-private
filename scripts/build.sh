#!/bin/bash

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color


#BUILDDIR="build"
BASEDIR=$(realpath "$(dirname "$0")")
ROOTDIR=$(realpath "$BASEDIR/..")
BUILDDIR=$ROOTDIR/build

# Functions
function print_header() {
    echo -e "${YELLOW}#######################################################################${NC}"
    echo -e "${YELLOW}### ${1}${NC}"
    echo -e "${YELLOW}#######################################################################${NC}"
}

function print_step() {
    currdate=$(date +"%Y-%m-%d %H:%M:%S")
    echo -e "${currdate} ${BLUE}[ * ] ${1}${NC}"
}

function print_debug() {
    currdate=$(date +"%Y-%m-%d %H:%M:%S")
    echo -e "${currdate} ${PURPLE}[ * ] ${1}${NC}"
}

function print_success() {
    currdate=$(date +"%Y-%m-%d %H:%M:%S")
    echo -e "${currdate} ${GREEN}[ v ] ${1}${NC}"
}

function print_error() {
    currdate=$(date +"%Y-%m-%d %H:%M:%S")
    echo -e "${currdate} ${RED}[ x ] ${1}${NC}"
}

currdate=$(date +"%Y-%m-%d %H:%M:%S")
#clear

if [ "$1" == "clean" ]; then
    # Clean up previous build
    print_header "Cleaning up previous build"
    if [ -d "$BUILDDIR" ]; then
        print_step "Removing $BUILDDIR directory..."
        rm -rf "$BUILDDIR"
        print_success "Removed $BUILDDIR directory."
    else
        print_success "No previous build found."
    fi
fi


# Configure the project
print_header "Configuring the project"
print_step "Running CMake in $BUILDDIR..."

cmake -S "$ROOTDIR" -B "$BUILDDIR"

if [ $? -eq 0 ]; then
    print_success "CMake configuration completed successfully."
else
    print_error "CMake configuration failed."
    exit 1
fi

# Build the project
print_header "Building the project"
print_step "Building the project in $BUILDDIR..."

cmake --build "$BUILDDIR"

if [ $? -eq 0 ]; then
    print_success "Project build completed successfully."
else
    print_error "Project build failed."
    exit 1
fi
