import sys;

# Getting variables

contents = sys.argv[1].strip().lower();
keyword = sys.argv[2].strip().lower();

# Printing report

occurrence = contents.count(keyword);

if ( occurrence == 0 ):
    print(f"KeyWord '{keyword}' not found in given logFile");
else :
    print(f"KeyWord '{keyword}' occurred '{occurrence}' times in given logFile");
