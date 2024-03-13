import os
import pandas as pd
import json

# Create file paths
filePath = os.path.join(os.getcwd(), 'fishDataSheet.xlsx')
jsonPath = os.path.join(os.getcwd(), 'dataProcessing', 'data.json')

# Read in file and manipulate data to retun daily 
# uprun and downrun dates
df = pd.read_excel(filePath, parse_dates = ['date'])
df = df.drop(columns=['comments', 'time', 'personnel'])
df['date'] = df['date'].dt.strftime('%Y-%m-%d')
df = df.groupby(by=["date"]).sum()
df = df.reset_index()
df['uprun'] = df['uprun'].cumsum()
df['downrun'] = df['downrun'].cumsum()

# Convert output to json and export
result = df.to_json(orient='records')
parsed = json.dumps(json.loads(result), indent = 4)

with open(jsonPath, 'w') as outfile:
    outfile.write(parsed)
