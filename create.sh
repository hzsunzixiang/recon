
DIR=`pwd`
FILE="$DIR/script $DIR/src $DIR/src $DIR/test"

find -L $FILE  -name "*.erl" -o -name "*.hrl" > $DIR/cscope_source.files
cscope -bq -i $DIR/cscope_source.files  -f cscope_source.out


#ctags -R *.erl *.hrl

FILE="$DIR/script $DIR/src $DIR/src $DIR/test"

for i in $FILE
do
	cp .vimrc $i
done

