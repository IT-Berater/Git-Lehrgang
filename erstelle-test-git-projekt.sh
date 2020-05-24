echo "Erstelle testprojekt Verzeichnis"
mkdir testprojekt
cd testprojekt
echo "Erstelle ein git Repo mit git init"
git init
echo "Erstelle eine test-datei"
touch test-datei

echo "... führe 10 mal aus ..."
for ((i=1; i < 11; i++))
do
  echo "Erzeuge Datei datei_$i. "
  touch datei_$i

  echo "Eintrag $i in test-datei" >> test-datei
  echo "git add und git commit"
  git add .
  git commit -m "$i. commit"
done

cd testprojekt

echo "Log ausgeben mit git log --online --graph"
git log --oneline --graph
