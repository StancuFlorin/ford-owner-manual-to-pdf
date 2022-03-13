# Ford Manual to PDF

## Configure nginx
The pages from [ford](https://www.fordservicecontent.com/Ford_Content/vdirsnet/OwnerManual/Home/Content?variantid=8204&languageCode=ro&countryCode=ROU&Uid=G1538573&ProcUid=G1538576&userMarket=ROU&div=f&vFilteringEnabled=False) are not friendly to print (or export as PDF) and a CSS file needs to be modified. This is achieved using a reverse proxy configured in nginx.
- download http://nginx.org/en/download.html
- configure it with the files from this repo
- start it http://nginx.org/en/docs/windows.html

## HTML to PDF
- change the paths from from bulk_webpage_to_pdf.ps1
- open powershell and run `./bulk_webpage_to_pdf.ps1`
