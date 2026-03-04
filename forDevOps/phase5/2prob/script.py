import sys

directory = sys.argv[1]
logFiles = sys.argv[2:] # list of all passed files
errorFiles = []

# Reading logFiles & extracting only Error lines
for file in logFiles:
    with open(file, "r") as f:
        errorLines = 0
        for line in f:
            line = line.strip().lower()
            if not(line == "") and ( line.count("error") > 0 ): errorLines += 1
    errorFiles.append(str(errorLines) + f"{file}: {errorLines}_errors") # adding errorLines at start of result to help in sorting

# Sorting & Giving errorFiles to bash
errorFiles.sort(reverse=True) # sorting
for result in errorFiles: 
    result = errorFiles[errorFiles.index(result)][1:] # skip char0 bcz that is count of errorLines
    result = result[result.rfind("/")+1:] # getting exact file Name without path
    print(result)
