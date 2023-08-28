# for file in `ls ~/data/*txt`
# do
#     CILK_NWORKERS=28 ./graph_bm_static -f $file -r 1000000 -a 1 >> static2.txt
#     CILK_NWORKERS=28 ./graph_bm -f $file -r 1000000  -a 1 >> static2.txt
# done

for bs in {1000000,10000000,100000000}
do
    for file in `ls ~/data/large/*adj`
    do
        CILK_NWORKERS=28 ./graph_bm_static -f $file -r $bs -a 0 >> static2.txt
        CILK_NWORKERS=28 ./graph_bm -f $file -r $bs  -a 0 >> static2.txt
    done

    for file in `ls ~/data/large/*txt`
    do
        CILK_NWORKERS=28 ./graph_bm_static -f $file -r $bs -a 1 >> static2.txt
        CILK_NWORKERS=28 ./graph_bm -f $file -r $bs  -a 1 >> static2.txt
    done
done

# for file in `ls ~/data/undirected/*adj`
# do
#     CILK_NWORKERS=28 ./graph_bm_static -f $file -r 100000 -a 2 >> static2.txt
#     CILK_NWORKERS=28 ./graph_bm -f $file -r 100000  -a 2 >> static2.txt
# done

#  CILK_NWORKERS=28 ./graph_bm -f ~/data/wiki-topcats.txt -r 100000 -a 1 >> static2.txt
