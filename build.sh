#!/bin/bash
# Build script for all watch zines
# Builds both digital and print versions using typst

set -e

# Configuration
FONT_PATH="$HOME/.local/share/fonts"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color

# Zine projects
declare -A ZINES=(
    ["caballero"]="caballero/caballero.typ"
    ["iberia"]="iberia/iberia.typ"
    ["vainqueur"]="vainqueur/vainqueur.typ"
    ["template"]="template/main.typ"
)

# Function to build a single zine
build_zine() {
    local name=$1
    local typ_file=$2
    
    echo -e "\n${CYAN}=== Building $name ===${NC}"
    
    local dir=$(dirname "$typ_file")
    local output_dir="$dir/output"
    
    # Create output directory
    mkdir -p "$output_dir"
    
    # Get script directory as project root
    local script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    
    # Build digital version
    echo -e "${YELLOW}Building digital version...${NC}"
    local digital_output="$output_dir/${name}_digital.pdf"
    if typst compile --root "$script_dir" --font-path "$FONT_PATH" --input digital=true "$typ_file" "$digital_output"; then
        echo -e "${GREEN}✓ Digital version built successfully${NC}"
    else
        echo -e "${RED}✗ Digital version failed${NC}"
        return 1
    fi
    
    # Build print version
    echo -e "${YELLOW}Building print version...${NC}"
    local print_output="$output_dir/${name}_print.pdf"
    if typst compile --root "$script_dir" --font-path "$FONT_PATH" --input digital=false "$typ_file" "$print_output"; then
        echo -e "${GREEN}✓ Print version built successfully${NC}"
    else
        echo -e "${RED}✗ Print version failed${NC}"
        return 1
    fi
    
    return 0
}

# Function to clean output directories
clean_outputs() {
    echo -e "\n${CYAN}=== Cleaning output directories ===${NC}"
    
    for name in "${!ZINES[@]}"; do
        local typ_file="${ZINES[$name]}"
        local dir=$(dirname "$typ_file")
        local output_dir="$dir/output"
        
        if [ -d "$output_dir" ]; then
            echo -e "${YELLOW}Cleaning $name...${NC}"
            rm -rf "$output_dir"
            echo -e "${GREEN}✓ Cleaned $name${NC}"
        fi
    done
}

# Show usage
show_usage() {
    echo "Usage: $0 [OPTIONS] [ZINE]"
    echo ""
    echo "Options:"
    echo "  -c, --clean    Clean all output directories"
    echo "  -h, --help     Show this help message"
    echo ""
    echo "Zines:"
    echo "  all            Build all zines (default)"
    for name in "${!ZINES[@]}"; do
        echo "  $name"
    done | sort
}

# Parse arguments
CLEAN=false
ZINE="all"

while [[ $# -gt 0 ]]; do
    case $1 in
        -c|--clean)
            CLEAN=true
            shift
            ;;
        -h|--help)
            show_usage
            exit 0
            ;;
        *)
            ZINE=$1
            shift
            ;;
    esac
done

# Main script
echo -e "${MAGENTA}Watch Zine Build Script${NC}"

# Clean if requested
if [ "$CLEAN" = true ]; then
    clean_outputs
    exit 0
fi

# Build specified zine(s)
success=true

if [ "$ZINE" = "all" ]; then
    for name in "${!ZINES[@]}"; do
        if ! build_zine "$name" "${ZINES[$name]}"; then
            success=false
        fi
    done
elif [ -n "${ZINES[$ZINE]}" ]; then
    if ! build_zine "$ZINE" "${ZINES[$ZINE]}"; then
        success=false
    fi
else
    echo -e "${RED}Unknown zine: $ZINE${NC}"
    echo -e "${YELLOW}Available zines: ${!ZINES[@]}${NC}"
    exit 1
fi

# Summary
echo -e "\n${MAGENTA}=== Build Complete ===${NC}"
if [ "$success" = true ]; then
    echo -e "${GREEN}All builds completed successfully!${NC}"
    exit 0
else
    echo -e "${RED}Some builds failed. Check the output above.${NC}"
    exit 1
fi
