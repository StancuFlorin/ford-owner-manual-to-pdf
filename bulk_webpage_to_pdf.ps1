$sourceFile = "C:\Users\stanc\Desktop\Ford EcoSport 2018\links-local.txt"
$destFolder = "C:\Users\stanc\Desktop\Ford EcoSport 2018\all\"
$num = 1

$userAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36"

foreach($link in [System.IO.File]::ReadLines($sourceFile)) {
	$outfile = $num.ToString() + '.pdf'
	& 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' --headless --user-agent="$userAgent" --print-to-pdf-no-header --run-all-compositor-stages-before-draw --hide-scrollbars --print-to-pdf="$destFolder $outfile" "$link"
	Start-Sleep -s 3
	echo "Download $outfile"
	$num++
}
