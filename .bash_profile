export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias javava='javac -J-Xms32m -J-Xmx256m $1'
alias rgo='R --no-save '
alias sisobus='ssh sisobus@13.209.25.12'
alias hihihi='ssh hihihi@sisobus.com'
alias 20111596='ssh cs20111596@cspro.sogang.ac.kr'
alias mclab='ssh sisobus@mclab06.sogang.ac.kr'
alias icpc='ssh sisobus@icpc.sogang.ac.kr'
alias mine='cd /Users/sisobus/coding/uzbek/mine'
alias acmicpc='ssh acmicpc@icpc.sogang.ac.kr'
alias django='ssh django@sisobus.com'
alias JS='cd /Users/sisobus/JulySix/julysix'
alias jsadmin='cd /Users/sisobus/JulySix/julysix/julysix_admin/'

alias nn='cd /Users/sisobus/coding/nanoc/'
alias nnc='nanoc'
alias nnv='nanoc view'
alias nndep='nanoc deploy --target public'

alias algo='cd /Users/sisobus/coding/Algorithm/'

alias 8sem='cd /Users/sisobus/Documents/8sem/'

alias hgrep='iconv -c -f UTF-8-MAC -t UTF-8 | grep'
alias SL='cd /Users/sisobus/Documents/startlink'
alias weather='ssh weather@icpc.sogang.ac.kr'
alias giftem='ssh giftem@sisobus.com'

alias l='ls '

alias galgo_mid='cd /Users/sisobus/coding/Galgorithm/midterm'
alias pattern='cd /Users/sisobus/coding/pattern_recognition/project'
alias api='ssh api@sisobus.com'

alias NDDS='cd ~/coding/NDDS'

alias cspro='ssh gr120150241@cspro.sogang.ac.kr'
alias ssdserver='ssh sisobus@mclab28.sogang.ac.kr'
alias dell='ssh sisobus@mclab29.sogang.ac.kr'

alias timeout='gtimeout'

alias psm='ssh root@58.227.42.82'
#alias mongo_scp='scp -r root@sisobus.com:/root/dump $1'
alias ls_theme='ls /usr/local/Cellar/highlight/3.22/share/highlight/themes/'

alias law='ssh root@58.227.42.161'
alias aws='ssh -i /Users/sisobus/Dropbox/aws-sisobus.pem  ubuntu@52.78.55.223'

alias 2016cp='cd ~/Dropbox/2016_cprogramming'
alias goodsoup='ssh root@222.239.250.23'

alias react='cd /Users/sisobus/Documents/vuno/React'
alias gitlogall='git log --graph --oneline --all'
alias gitg="git log --graph --all --format=format:'%C(bold blue)%h%C(reset) -- %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(bold white)-- %an%C(reset)%C(bold yellow)%d%C(reset)' --abbrev-commit --date=relative"
alias torrent='cd /Users/sisobus/coding/torrent'

alias mongod_start="brew services start mongodb"
alias skhm="cd /Users/sisobus/coding/skhm_today"
alias sapi="cd /Users/sisobus/coding/sapi"
alias pggo="psql -h localhost -p 5432 -d dews -U postgres"
docker_kill() {
    sudo docker kill $(docker ps -q)
    sudo docker rm $(docker ps -a -q)
}
# xpzmfks007@
mongo_backup() {
    cd ~
    mongodump --host 127.0.0.1 
    scp -r ~/dump sisobus@13.209.25.12:
}
image_scp() {
    scp -r "$1" sisobus@13.209.25.12:/var/www/skhm_today/Application/static/images/
}
code() {
    highlight -O rtf "$1" -s fruit | pbcopy
}

# jupyter virtualenv
# 
# source activate [virtualEnv]
# pip install ipykernel
# python -m ipykernel install --user --name [virtualEnv] --display-name "[displayKenrelName]"
#
#
#
##########
## tree ##
##########
## example ...
#|____Cycles
#| |____.DS_Store
#| |____CyclesCards.json
#| |____Carbon
#| | |____Carbon.json
# alternate: alias tree='find . -print | sed -e "s;[^/]*/;|____;g;s;____|; |;g"'
# use$ tree ; tree . ; tree [some-folder-path]
function tree {
    find ${1:-.} -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
}
endarmy() {
    start=$(gdate -d '2017-02-28' "+%s")
    today=$(gdate -d 'today' "+%s")
    end=$(gdate -d '2020-02-28' "+%s")

    datediff=$(( ($end - $today)/(86400) ))
    start=$(gdate '+%Y-%m-%d' -d '2017-02-28')
    end=$(gdate '+%Y-%m-%d' -d '2020-02-28')
    echo "┌─────UNTIL─BECOME─HUMAN─────┐"
    echo "│    start date : $start │"
    echo "│      end date : $end │"
    echo "│          d-day :  $datediff days │"
    echo "└────────────────────────────┘"
}
endarmy
echo "      (\`-.                    .-') _"
echo "    _(OO  )_                 ( OO ) )"
echo ",--(_/   ,. \,--. ,--.   ,--./ ,--,'  .-'),-----."
echo "\   \   /(__/|  | |  |   |   \ |  |\ ( OO'  .-.  '"
echo " \   \ /   / |  | | .-') |    \|  | )/   |  | |  |"
echo "  \   '   /, |  |_|( OO )|  .     |/ \_) |  |\|  |"
echo "   \     /__)|  | | \`-' /|  |\    |    \ |  | |  |"
echo "    \   /   ('  '-'(_.-' |  | \   |     \`'  '-'  '"
echo "     \`-'      \`-----'    \`--'  \`--'       \`-----'"

echo ""
echo "            .-')   .-. .-')   ('-. .-. _   .-')"
echo "           ( OO ). \  ( OO ) ( OO )  /( '.( OO )_"
echo "          (_)---\_),--. ,--. ,--. ,--. ,--.   ,--.)"
echo "          /    _ | |  .'   / |  | |  | |   \`.'   |"
echo "          \  :\` \`. |      /, |   .|  | |         |"
echo "           '..\`''.)|     ' _)|       | |  |'.'|  |"
echo "          .-._)   \|  .   \  |  .-.  | |  |   |  |"
echo "          \       /|  |\   \ |  | |  | |  |   |  |"
echo "           \`-----' \`--' '--' \`--' \`--' \`--'   \`--'"

