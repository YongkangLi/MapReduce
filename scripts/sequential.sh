# map
cat ../datasets/source01 | ../src/mapper.py > ../datasets/map01
cat ../datasets/source02 | ../src/mapper.py > ../datasets/map02
cat ../datasets/source03 | ../src/mapper.py > ../datasets/map03
cat ../datasets/source04 | ../src/mapper.py > ../datasets/map04
cat ../datasets/source05 | ../src/mapper.py > ../datasets/map05
cat ../datasets/source06 | ../src/mapper.py > ../datasets/map06
cat ../datasets/source07 | ../src/mapper.py > ../datasets/map07
cat ../datasets/source08 | ../src/mapper.py > ../datasets/map08
cat ../datasets/source09 | ../src/mapper.py > ../datasets/map09

# reduce - 1st layer
cat ../datasets/map01 ../datasets/map02 ../datasets/map03 | ../src/reducer.py > ../datasets/reduce11
cat ../datasets/map04 ../datasets/map05 ../datasets/map06 | ../src/reducer.py > ../datasets/reduce12
cat ../datasets/map07 ../datasets/map08 ../datasets/map09 | ../src/reducer.py > ../datasets/reduce13

# reduce - 2nd layer
cat ../datasets/reduce11 ../datasets/reduce12 ../datasets/reduce13 | ../src/reducer.py > ../datasets/reduce21
