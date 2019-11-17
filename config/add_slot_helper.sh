
port=$1
start=$2
end=$3

for slot in `seq ${start} ${end}`
do
    echo "slot:${slot}"
    redis-cli -p ${port} cluster addslots ${slot}
done
