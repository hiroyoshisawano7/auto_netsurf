# auto_netsurf
With this new tool, you'll be much more efficient in your Internet browsing!
This tool detects all URLs displayed on the screen and displays all of those Web sites on the browser tab. In addition, when displaying sites with a large ByteSize, it asks the user if he/she wants to access them, providing a comfortable surfing experience.

# Installation
Enter the URL you want to view in line 9 of auto_netsurf.rb. You will then experience automatic netsurfing on that URL.
The number in line 43 is the maximum ByteSize of the web page that will be opened automatically without asking the user. If you are comfortable with the specs of your computer, you may set it to a larger value.

# Usage
First, install the package using gem.
`$gem install open-uri`
`$gem install nokogiri`
`$gem install launchy`
After installing the package, simply run the program above.
`$ruby auto_netsurf.rb`

# AUTHOR
Hiroyoshi Sawano　<sawano[atmark]kwansei.ac.jp>
