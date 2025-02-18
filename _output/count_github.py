import pandas as pdgit add .
git commit -m "Recovered files"
git push origin main
Files = [
    "/home/ubuntu/assignment-01-Bruce11151/stackoverflow/questions.csv",
    "/home/ubuntu/assignment-01-Bruce11151/stackoverflow/question_tags.csv" ]

count = 0
for file in Files:
    df = pd.read_csv(file, nrows=1000)
    count += df.apply(lambda row: row.astype(str).str.contains("GitHub", case=False).any(), axis=1).sum()

print(f"Total lines containing 'GitHub': {count}")
