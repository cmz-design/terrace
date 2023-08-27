# for file in `ls ~/data/*txt`
# do
#     CILK_NWORKERS=28 ./graph_bm_static -f $file -r 100000 >> log.txt
#     CILK_NWORKERS=28 ./graph_bm -f $file -r 100000  >> log.txt
# done

    CILK_NWORKERS=28 ./graph_bm -f ~/data/cit-Patents.txt -r 100000
