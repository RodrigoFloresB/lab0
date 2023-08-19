
# Modelo del cpu
cat /proc/cpuinfo | grep 'model name' 

# Cantidad de cores del cpu
cat /proc/cpuinfo | grep 'model name' | wc -l 

# Alicia/Rodrigo
wget https://www.gutenberg.org/files/11/11-0.txt &&
    sed  's/Alice/Rodrigo/g' 11-0.txt > Rodrigo_en_el_pais_de_las_maravillas.txt &&
        rm 11-0.txt

# Mediciones meteorológicas
sort -k 5nr weather_cordoba.in -o weather_cordoba_ord.in &&
    head -n1 weather_cordoba_ord.in | awk '{print $1, $2, $3}' &&
        tail -n1 weather_cordoba_ord.in | awk '{print $1, $2, $3}'

# ATP + un punto analogo al anterior (maximo y minimo) 
sort -k 3nr atpplayers.in -o atpplayers_ord.in &&
    head -n1 atpplayers_ord.in | awk '{print $1, $3}' &&
        tail -n1 atpplayers_ord.in | awk '{print $1, $3}'

# SuperLiga
sort -k 2nr -k 7nr -k 8n superliga.in -o superliga_ord.in &&
    head -n1 superliga_ord.in | awk '{print $1, $2}' &&
        tail -n1 superliga_ord.in | awk '{print $1, $2}'

# MAC address 
ip link | grep -o -E 'link/ether ([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}'
# ([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2} fue generado por chat-gpt
# No pude entender como usar las 'expresiones regulares'

# Subtitulos de peliculas totalmente legales
# A
mkdir blindspot

for i in {1..10}; do 
    touch blindspot/bs_SO1E${i}_es.srt
done

# B 
for i in {1..10}; do 
    mv blindspot/bs_SO1E${i}_es.srt blindspot/bs_SO1E${i}.srt
done

# No es el punto extra, es algo experimental que me parecio interesante
# Esta lista de nombres corresponden a los nombres de la primer temporada
# de la serie Blindspot
capitulos=(
    "pilot" # Indice 0 y quiero usar el mismo i del for
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

# Extras

# ffmpeg -i captura_pantalla.mp4 -ss 00:00:01 -to 00:00:04 -c:v libx264 -c:a acc recortado.mp4 &&
#     ffmpeg -i "concat:recortado.mp4|efecto_suspenso.mp4" -c:v libx264 -c:a acc salida.mp4

# Intente experimentar con esto pero siempre consigo el mismo resultado, un video sin sonido ni imagen.
# Solo logre cambiar de formato la captura de pantalla.
# Imagino que el problema viene por el hecho de usar un subsistema de linux en windows.
# Justamente de eso trataba el video (mini clip de terror).


# CLEAN
# rm Rodrigo_en_el_pais_de_las_maravillas.txt  superliga_ord.in  weather_cordoba_ord.in  atpplayers_ord.in &&
#     rm -r blindspot