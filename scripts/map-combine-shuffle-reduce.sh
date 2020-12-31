# map
cat ../datasets/source01 | ../src/mapper.py | ../src/shuffler.py ../datasets/map10 ../datasets/map11 ../datasets/map12 &
cat ../datasets/source02 | ../src/mapper.py | ../src/shuffler.py ../datasets/map20 ../datasets/map21 ../datasets/map22 &
cat ../datasets/source03 | ../src/mapper.py | ../src/shuffler.py ../datasets/map30 ../datasets/map31 ../datasets/map32 &
cat ../datasets/source04 | ../src/mapper.py | ../src/shuffler.py ../datasets/map40 ../datasets/map41 ../datasets/map42 &
cat ../datasets/source05 | ../src/mapper.py | ../src/shuffler.py ../datasets/map50 ../datasets/map51 ../datasets/map52 &
cat ../datasets/source06 | ../src/mapper.py | ../src/shuffler.py ../datasets/map60 ../datasets/map61 ../datasets/map62 &
cat ../datasets/source07 | ../src/mapper.py | ../src/shuffler.py ../datasets/map70 ../datasets/map71 ../datasets/map72 &
cat ../datasets/source08 | ../src/mapper.py | ../src/shuffler.py ../datasets/map80 ../datasets/map81 ../datasets/map82 &
cat ../datasets/source09 | ../src/mapper.py | ../src/shuffler.py ../datasets/map90 ../datasets/map91 ../datasets/map92 &
wait

# reduce - 1st layer
cat ../datasets/map10 ../datasets/map20 ../datasets/map30 | ../src/reducer.py > ../datasets/reduce11 &
cat ../datasets/map40 ../datasets/map50 ../datasets/map60 | ../src/reducer.py > ../datasets/reduce12 &
cat ../datasets/map70 ../datasets/map80 ../datasets/map90 | ../src/reducer.py > ../datasets/reduce13 &
cat ../datasets/map11 ../datasets/map21 ../datasets/map31 | ../src/reducer.py > ../datasets/reduce14 &
cat ../datasets/map41 ../datasets/map51 ../datasets/map61 | ../src/reducer.py > ../datasets/reduce15 &
cat ../datasets/map71 ../datasets/map81 ../datasets/map91 | ../src/reducer.py > ../datasets/reduce16 &
cat ../datasets/map12 ../datasets/map22 ../datasets/map32 | ../src/reducer.py > ../datasets/reduce17 &
cat ../datasets/map42 ../datasets/map52 ../datasets/map62 | ../src/reducer.py > ../datasets/reduce18 &
cat ../datasets/map72 ../datasets/map82 ../datasets/map92 | ../src/reducer.py > ../datasets/reduce19 &
wait

# reduce - 2nd layer
cat ../datasets/reduce11 ../datasets/reduce12 ../datasets/reduce13 | ../src/reducer.py > ../datasets/reduce21 &
cat ../datasets/reduce14 ../datasets/reduce15 ../datasets/reduce16 | ../src/reducer.py > ../datasets/reduce22 &
cat ../datasets/reduce17 ../datasets/reduce18 ../datasets/reduce19 | ../src/reducer.py > ../datasets/reduce23 &
wait

# reduce - 3rd layer
cat ../datasets/reduce21 ../datasets/reduce22 ../datasets/reduce23 | ../src/reducer.py > ../datasets/reduce31
