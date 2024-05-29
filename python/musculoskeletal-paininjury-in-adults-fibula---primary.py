# Professor George Peat, Professor Kelvin Jordan, James Bailey, Doctor Claire Burton, Doctor Victoria Welsh, Simon Wathall, Professor Jonathan Hill, Doctor Emma Parry, Doctor Dahai Yu, Steff Garvin, Michael Longeran, 2024.

import sys, csv, re

codes = [{"code":"75591007.0","system":"snomedct"},{"code":"447395005.0","system":"snomedct"},{"code":"308153009.0","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('musculoskeletal-paininjury-in-adults-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["musculoskeletal-paininjury-in-adults-fibula---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["musculoskeletal-paininjury-in-adults-fibula---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["musculoskeletal-paininjury-in-adults-fibula---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
