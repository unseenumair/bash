import sys;

# Making list of files
files = sys.argv[1] + "\n";
filesList = [];

while (files.count("\n") > 0):
    index = files.find("\n");
    filePath = files[:index];
    filesList.append(filePath);
    files = files[index+1:];

# Making list of directories
directories = sys.argv[2] + "\n";
dirsList = [];

while (directories.count("\n") > 0):
    index = directories.find("\n");
    dirPath = directories[:index];
    dirsList.append(dirPath);
    directories = directories[index+1:];

# Calculating number of Files & dirs & showing them
nFiles = len(filesList);
nDirs = len(dirsList) - 1; # Bcz . is the same directory

print(f"Files: {nFiles}, Directories: {nDirs}");
