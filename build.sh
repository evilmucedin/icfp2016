
# Install rakudobrew if needed
if [[ ! -e ~/.rakudobrew ]] ; then
  echo "Rakudobrew not found, installing"
  git clone https://github.com/tadzik/rakudobrew ~/.rakudobrew
  export PATH=~/.rakudobrew/bin:$PATH
  rakudobrew init
  rakudobrew build moar 2016.07.1
  rakudobrew build panda
  panda install Task::Star
  panda install LREP
fi

if [[ ! $(perl -V | grep shrplib) ]] ; then
  perlbrew install perl-stable -Duseshrplib
  panda install Inline::Perl5
fi

