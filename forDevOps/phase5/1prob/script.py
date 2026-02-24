import sys
from datetime import datetime

logFile = sys.argv[1]
cleanedFile = sys.argv[2]

expectedCols = 5 # YYYY-MM-DD HH-MM-SS Level Service Msg
lines = []
cleanedLines = []
levels = ["info", "error", "warn"]

# Storing lines
with open(logFile, "r") as f:
    for line in f.readlines():
        line = line.strip()
        if not(line == "") and (line[0].isdigit()): # rm Empty & notNum (bcz first thing must be date) starting Lines
            while (line.count("  ") > 0): # rm double spaces
                line = line.replace("  ", " ")
            lines.append(line) # push line into lines
            
# Storing Cleaned Lines
for line in lines:
    # Separating Expected Cols
    testLine = line
    cols = []
    for i in range(0, expectedCols):
        spaceIndex = testLine.find(" ") # space index (end of some cols)
        cols.append(testLine[:spaceIndex]) # separating col
        testLine = testLine[spaceIndex+1:] # remaining cols

    skipLine = False
    
    # validating date
    try:
        datetime.strptime(cols[0], "%Y-%m-%d") # YYYY-MM-DD
    except:
        skipLine = True

    # validating time
    try:
        datetime.strptime(cols[1], "%H:%M:%S") # HH:MM:SS
    except:
        skipLine = True
    
    # upperIng Level
    cols[2] = cols[2].upper()
        
    # Cleaning ServiceCol
    while (cols[3].count(" ") > 0):
        spaceIndex = cols[3].find(" ")
        cols[3] = cols[3].replace(cols[3][spaceIndex], cols[3][spaceIndex].upper()) # Make the first letter after space upperCase
        cols[3] = cols[3].replace(" ", "") # rm space
        
    if (cols[0][0].isdigit() and cols[1][0].isdigit() and cols[2].lower() in levels and not(cols[3] == "") and not(cols[4] == "")): # Date and Time (int) Level(info, warn or error) not(Service & Msg == "")
        if not(skipLine): # if skipLine = False
            cleanedLines.append(line)
        
# Writing cleaned_logFile
with open(cleanedFile, "a") as f:
    for line in cleanedLines:
        f.write(f"{line}\n")
