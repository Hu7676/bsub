for  inf  in *.com
do
name=${inf%\.*}
cp g16A03.bsub A.bsub ;
sed -i 's/JING/'$name'/g' A.bsub ;
bsub < A.bsub;
sleep 5s; 
rm A.bsub;

done
