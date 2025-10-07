# 🧠 Image Info Tool (Termux / Kali)

A simple Bash script for **image analysis** on Termux or Kali Linux.  
This tool allows you to quickly extract useful information from any image:

## ✨ Features
- 📸 Extract full **EXIF metadata** (camera info, date, etc.)
- 🌍 Detect **GPS location** and generate a Google Maps link if available
- 📝 Perform **OCR** (text extraction) on images (supports English & Arabic)
- 🌐 Manual reverse image search links (Google Images / TinEye)

---

## 📥 Installation (Termux)

# 1. Update system
```
apt update && apt upgrade -y
```

# 2. Install required packages
```
pkg install exiftool tesseract imagemagick curl nano -y
```

# 3. Grant Termux storage permission
```
termux-setup-storage
```

(Optional) Install Arabic OCR support:

```
pkg install tesseract-ocr-ara -y
```

## 🧰 Installation (Kali Linux)

```
sudo apt update && sudo apt upgrade -y
```
```
sudo apt install exiftool tesseract-ocr imagemagick curl nano -y
```

(Optional) Install Arabic OCR support:
```
sudo apt install tesseract-ocr-ara -y
```

---

📜 Script Setup

Clone this repository and give the script permission to run:

git clone https://github.com/YOUR_USERNAME/YOUR_REPO.git
cd YOUR_REPO
chmod +x image_info.sh


---

🚀 Usage

./image_info.sh

Then enter the full path to your image when prompted, for example:

/sdcard/Download/image.jpg

The script will:

Show all EXIF data

Check for GPS coordinates

Extract text using OCR

Print a Google Maps link if location is found



---

📝 Example Output

===============================
📸 Image Information Collector
===============================

Enter image path: /sdcard/Download/test.jpg

🔍 Extracting all EXIF metadata...
[...metadata here...]

🌍 Checking for GPS coordinates...
✅ GPS location found:
Latitude: 30.0444
Longitude: 31.2357
🌐 Google Maps: https://www.google.com/maps?q=30.0444,31.2357

📝 Extracting text from image (OCR)...
[...detected text...]

✅ Analysis complete.


---

🌐 Reverse Image Search

You can manually upload the image to these services for reverse lookup:

Google Images

TinEye



---

🧑‍💻 Author

Developed by [Your Name]

📂 GitHub: https://github.com/YOUR_USERNAME



---

⚠️ Disclaimer

This tool is for educational and forensic use only.
Do not use it to invade privacy or collect data without consent.
