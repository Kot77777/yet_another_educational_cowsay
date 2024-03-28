.PHONY: all clean install uninstall

all: cowsay

clean:
	rm *.o cowsay

install:
	install ./cowsay /usr/local/bin

uninstall:
	rm /usr/share/cow/cowsay

Parser.o: ../yet_another_educational_cowsay/Parser.hpp
	g++ -c ../yet_another_educational_cowsay/Parser.cpp -o Parser.o

Field.o: ../yet_another_educational_cowsay/Field.hpp
	g++ -c ../yet_another_educational_cowsay/Field.cpp -o Field.o

ASCIIPicture.o: ../yet_another_educational_cowsay/ASCIIPicture.hpp
	g++ -c ../yet_another_educational_cowsay/ASCIIPicture.cpp -o ASCIIPicture.o

Cloud.o: ../yet_another_educational_cowsay/Cloud.hpp
	g++ -c ../yet_another_educational_cowsay/Cloud.cpp -o Cloud.o

Cow.o: ../yet_another_educational_cowsay/Cow.hpp
	g++ -c ../yet_another_educational_cowsay/Cow.cpp -o Cow.o

cowsay: main.cpp Parser.o Field.o ASCIIPicture.o Cloud.o Cow.o ../yet_another_educational_cowsay/Parser.hpp ../yet_another_educational_cowsay/Field.hpp ../yet_another_educational_cowsay/ASCIIPicture.hpp ../yet_another_educational_cowsay/Cloud.hpp ../yet_another_educational_cowsay/Cow.hpp
	g++ main.cpp Parser.o Field.o ASCIIPicture.o Cloud.o Cow.o -o cowsay
