import csv

def read_csv(filename):
    datas = []
    datafile = open(filename,"r")
    reader = csv.reader(datafile)
    next(reader)
    for data in reader:
        datas.append(data)
    return datas