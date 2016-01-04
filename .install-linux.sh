#!/bin/bash

ls -l $HOME/{fish,.config,.local,.nvm}
bash -c "[ -d $HOME/fish/bin ] \
|| (wget $FISH_RELEASE \
&& tar -xzf $(basename $FISH_RELEASE) \
&& rm $(basename $FISH_RELEASE) \
&& cd $(basename ${FISH_RELEASE%.tar.gz}) \
&& ./configure --prefix=$HOME/fish \
&& make \
&& make install)"
export PATH=$HOME/fish/bin:$PATH
bash -c "[ -e $HOME/.local/share/omf/init.fish ] \
|| (rm -rf ~/.{local/share,config}/omf \
&& wget -O omf-install $OMF_INSTALLER \
&& fish omf-install \
&& fish -c 'omf install foreign-env' \
&& mkdir -p $HOME/.local/share/omf/pkg/nvm \
&& cp -R * $HOME/.local/share/omf/pkg/nvm)"
bash -c "[ -d $HOME/.nvm ] \
|| (rm -rf ~/.nvm \
&& wget -O nvm-install $NVM_INSTALLER \
&& bash nvm-install)"
