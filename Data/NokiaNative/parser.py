import xml.etree.ElementTree as ET
import os

dir = "./"
file_name = "progress.xml"
mytree = ET.parse(dir + file_name)
myroot = mytree.getroot()

print(f"toRun: {len(myroot[2])}")
print(f"done: {len(myroot[3])}")
