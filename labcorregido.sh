cat /proc/cpuinfo | grep 'model name'

cat /proc/cpuinfo | grep 'model name' | wc -l

wget https://www.gutenberg.org/files/11/11-0.txt &&
    sed  's/Alice/Rodrigo/g' 11-0.txt > Rodrigo_en_el_pais_de_las_maravillas.txt &&
        rm 11-0.txt

sort -k 5nr weather_cordoba.in -o weather_cordoba_ord.in &&
    head -n1 weather_cordoba_ord.in | awk '{print $1, $2, $3}' &&
        tail -n1 weather_cordoba_ord.in | awk '{print $1, $2, $3}'

sort -k 3n atpplayers.in -o atpplayers_ord.in &&
    head -n1 atpplayers_ord.in | awk '{print $1, $3}' &&
        tail -n1 atpplayers_ord.in | awk '{print $1, $3}'

awk '{goles = $7 - $8; print $0, goles}' superliga.in | sort -k2nr -k9nr | awk '{NF--; print}' > superliga_ord.in &&
  head -n1 superliga_ord.in | awk '{print $1, $2}' &&
        tail -n1 superliga_ord.in | awk '{print $1, $2}'


ip link | grep -o -E 'link/ether ([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}'

mkdir blindspot

for i in {1..10}; do
    touch blindspot/bs_SO1E${i}_es.srt
done

for i in {1..10}; do
    mv blindspot/bs_SO1E${i}_es.srt blindspot/bs_SO1E${i}.srt
done

capitulos=(
    "pilot"
    "Woe_Has_Joined"
    "A_Stray_Howl"
    "Eight_Slim_Grins"
    "Bone_May_Rot"
    "Split_the_Law"
    "Cede_Your_Soul"
    "Sent_on_Tour"
    "Persecute_Envoys"
    "Authentic_Flirt"
    "Evil_Handmade_Instrument"
)


for i in {1..10}; do
    mv blindspot/bs_SO1E${i}.srt blindspot/E${i}_${capitulos[i]}.srt
done
