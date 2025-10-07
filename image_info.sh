#!/bin/bash
# 🧠 Image Analysis Tool - Termux / Kali

clear
echo "==============================="
echo "📸 Image Information Collector"
echo "==============================="
echo
read -p "📝 Enter image path: " img

if [ ! -f "$img" ]; then
    echo "❌ Image not found."
    exit 1
fi

echo
echo "🔍 Extracting all EXIF metadata..."
echo "----------------------------------"
exiftool "$img"
echo

# Check for GPS info inside EXIF
echo "🌍 Checking for GPS coordinates..."
lat=$(exiftool "$img" | grep "GPS Latitude" | awk -F': ' '{print $2}')
lon=$(exiftool "$img" | grep "GPS Longitude" | awk -F': ' '{print $2}')

if [ -n "$lat" ] && [ -n "$lon" ]; then
    echo "✅ GPS location found:"
    echo "Latitude: $lat"
    echo "Longitude: $lon"
    echo "🌐 Google Maps: https://www.google.com/maps?q=$lat,$lon"
else
    echo "❌ No GPS data found in this image."
fi

echo
echo "📝 Extracting text from image (OCR)..."
echo "-------------------------------------"
tesseract "$img" stdout 2>/dev/null
echo
echo "✅ Analysis complete."

echo
echo "🌐 Reverse image search (manual):"
echo "   - https://images.google.com"
echo "   - https://tineye.com"