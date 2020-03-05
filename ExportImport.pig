data = LOAD '/home/manas/Downloads/Datasets/export.csv' USING PigStorage(',');
filter1 = FOREACH data GENERATE $3 as country, $4 as year;
group1 = GROUP filter1 by ($0,$1);
count = FOREACH group1 GENERATE group, COUNT(filter1);
DUMP count;
data = LOAD '/home/manas/Downloads/Datasets/import.csv' USING PigStorage(',');
filter1 = FOREACH data GENERATE $3 as country, $4 as year;
group1 = GROUP filter1 by ($0,$1);
count = FOREACH group1 GENERATE group, COUNT(filter1);
DUMP count;

