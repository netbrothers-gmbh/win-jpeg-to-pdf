# win-jpeg-to-pdf
Merges one JPEG image to a portable document format (PDF) file on the Windows platform with the help of [Ghostscript](http://www.ghostscript.com).

## Prerequisites

This script requires

- [Ghostscript](http://www.ghostscript.com) to be installed on the system ([download page][ghostscript-download-page-link])
- an environment variable named `GSWIN` pointing to the Ghostscript binary
- and an environment variable named `GSWIN_LIBDIR` pointing to the Ghostscript library.

## Usage

Once the `GSWIN` environment variable is set to the correct path, e.g. `"C:\Program Files\gs\gs9.16\bin\gswin64.exe"` and the `GSWIN_LIBDIR` environment variable is set to the correct path, e.g. `"C:\Program Files\gs\gs9.16\lib"`, the script can be invoked as follows.

```
win-jpeg-to-pdf.bat Input.jpg Output.pdf
```

[ghostscript-download-page-link]: http://www.ghostscript.com/download/gsdnld.html
