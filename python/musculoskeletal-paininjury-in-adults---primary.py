# Professor George Peat, Professor Kelvin Jordan, James Bailey, Doctor Claire Burton, Doctor Victoria Welsh, Simon Wathall, Professor Jonathan Hill, Doctor Emma Parry, Doctor Dahai Yu, Steff Garvin, Michael Longeran, 2024.

import sys, csv, re

codes = [{"code":"202609006.0","system":"snomedct"},{"code":"300954003.0","system":"snomedct"},{"code":"53057004.0","system":"snomedct"},{"code":"81680005.0","system":"snomedct"},{"code":"203131005.0","system":"snomedct"},{"code":"125601008.0","system":"snomedct"},{"code":"87778004.0","system":"snomedct"},{"code":"90834002.0","system":"snomedct"},{"code":"49218002.0","system":"snomedct"},{"code":"399346004.0","system":"snomedct"},{"code":"2764000.0","system":"snomedct"},{"code":"285365001.0","system":"snomedct"},{"code":"72047008.0","system":"snomedct"},{"code":"250102002.0","system":"snomedct"},{"code":"202606004.0","system":"snomedct"},{"code":"1003721002.0","system":"snomedct"},{"code":"202381003.0","system":"snomedct"},{"code":"125599006.0","system":"snomedct"},{"code":"54888009.0","system":"snomedct"},{"code":"12584003.0","system":"snomedct"},{"code":"47933007.0","system":"snomedct"},{"code":"404098005.0","system":"snomedct"},{"code":"2089002.0","system":"snomedct"},{"code":"301813003.0","system":"snomedct"},{"code":"939761000006103.0","system":"snomedct"},{"code":"43422002.0","system":"snomedct"},{"code":"80068009.0","system":"snomedct"},{"code":"53208009.0","system":"snomedct"},{"code":"202863007.0","system":"snomedct"},{"code":"125604000.0","system":"snomedct"},{"code":"39848009.0","system":"snomedct"},{"code":"122481008.0","system":"snomedct"},{"code":"64217002.0","system":"snomedct"},{"code":"371598009.0","system":"snomedct"},{"code":"1126007.0","system":"snomedct"},{"code":"30989003.0","system":"snomedct"},{"code":"58781003.0","system":"snomedct"},{"code":"17883008.0","system":"snomedct"},{"code":"202472008.0","system":"snomedct"},{"code":"282775007.0","system":"snomedct"},{"code":"2733002.0","system":"snomedct"},{"code":"279043006.0","system":"snomedct"},{"code":"310483003.0","system":"snomedct"},{"code":"448394006.0","system":"snomedct"},{"code":"309567004.0","system":"snomedct"},{"code":"90460009.0","system":"snomedct"},{"code":"209557005.0","system":"snomedct"},{"code":"24693007.0","system":"snomedct"},{"code":"62629000.0","system":"snomedct"},{"code":"64298006.0","system":"snomedct"},{"code":"272014002.0","system":"snomedct"},{"code":"299331007.0","system":"snomedct"},{"code":"49388007.0","system":"snomedct"},{"code":"282776008.0","system":"snomedct"},{"code":"202882003.0","system":"snomedct"},{"code":"MSW","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('musculoskeletal-paininjury-in-adults-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["musculoskeletal-paininjury-in-adults---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["musculoskeletal-paininjury-in-adults---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["musculoskeletal-paininjury-in-adults---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
