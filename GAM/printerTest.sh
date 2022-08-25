    printer_driver_web_url="https://www.kyoceradocumentsolutions.us/content/download-center-americas/us/drivers/drivers/Mac54_2022_07_11_zip.download.zip"
    printer_driver_zip_file_path="/tmp/Mac54_2022_07.11.zip.download.zip"

    curl -s -k -o "$printer_driver_zip_file_path" "$printer_driver_web_url" > /dev/null;
    

    printer_driver_unzip_directory_path="/tmp/Mac54_2022.07.11-KDC";
    
    
    unzip "$printer_driver_zip_file_path" -d "$printer_driver_unzip_directory_path"
    sleep 5
    
    ## *old* printer_driver_unzip_file_path="$printer_driver_unzip_directory_path/Mac52_2021.03.23-KDC/Kyocera OS X 10.9+ Web build 2021.03.23.dmg"
    ## printer_driver_unzip_file_path="$printer_driver_unzip_directory_path/Mac53_2021.10.06-KDC/Kyocera OS X 10.9+ Web build 2021.10.06.dmg"
    printer_driver_unzip_file_path="$printer_driver_unzip_directory_path/Kyocera OS X 10.9+ Web build 2022.07.11.dmg"
    
    
    volume_path=$(sudo hdiutil attach "$printer_driver_unzip_file_path" | grep Volumes | cut -f3)
    printer_driver_pkg_file_path=$(ls "$volume_path"/*.pkg)

    sudo installer -allowUntrusted -pkg "$printer_driver_pkg_file_path" -target /;