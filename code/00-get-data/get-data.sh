#
# Takes about 20 minutes to run with "high speed" internet
ofolder="../../data/refgen/"
mkdir $ofolder

# Download reference genome and chromosome inofrmation
wget https://www.encodeproject.org/files/ENCFF603ORM/@@download/ENCFF603ORM.tar.gz
wget https://www.encodeproject.org/files/ENCFF792NJK/@@download/ENCFF792NJK.tsv

# List files that are not this bash file (i.e. the data)
files=$(ls | grep -v sh)

# Move to appropriate directory
for ff in $files
do
    mv $ff $ofolder
done