#
# File:        parser.rb
# Descritpion: Ruby script that reads a pre-canned json file to extract product release information and RPM URLs.
#              Mostly used to play around with how to parse josn and use the resulting attributes.
#
# Author:      Tom Dyer
# GitHub:      http://github.com/tomdyer/JSONparser

require 'json'

releaseInfo = JSON.parse(File.read('releaseInfo.json'))

#
# Grab product attributes
#
product = releaseInfo['release']['product']
version = releaseInfo['release']['version']
revision = releaseInfo['release']['revision']

distroRPM = releaseInfo['packages']['distribution']
standaloneRPM = releaseInfo['packages']['standalone']


#
# Download RPM packages
#
#
p "Downloading install packages for #{product} #{version}-#{revision}"
# %x[wget #{distroRPM}]     # Lightweight distribution
# %x[wget #{standaloneRPM}] # Not so lightweight standalone install (very large, has product binaries)

p "Is this was a chef cookbook, we could install these packages now."
