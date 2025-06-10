# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias all='bjobs -u zxcao_group'
alias bs='bres -u'
alias gsconverge='grep "Optimized P" *.log'
alias gsimfreq="grep 'imaginary frequencies' *.log"
alias gsif="grep ' Frequencies --   -' *log"
alias gsgibbs='grep "Sum of electronic and thermal Free Energies" *.log'
alias gsgibbsc="grep 'Thermal correction to Gibbs Free Energy' *log"
alias gsee="grep 'SCF Done' *log | tail -n 1"
alias gserror="grep 'Error termi' *.log | awk '{print $1 ""}'| cut -d "." -f 1"
alias gstime='grep "Elapsed time" *.log'
alias gskw='grep "#p" *.com'
alias LS='ls'
alias CD='cd'
alias gsbsub='bsub < g16A03.bsub'
alias gR='grep RMS OUTCAR'
alias gr='grep reach OUTCAR'

# Mesmer
export PATH=$PATH:/share/home/jingxinhu/mesmer/Mesmer7.0-source/bin
export PATH=$PATH:/share/home/jingxinhu/Program/abcluster
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/share/home/jingxinhu/Program/abcluster
export PATH=$PATH:/share/home/jingxinhu/Program/sh

#vasp
export PATH=/share/home/jingxinhu/Program/vaspkit.1.5.1/bin:${PATH}
export PATH=/share/home/trlong/software/scripts_bin/vtstscripts-1029:${PATH}

#progyn
export PATH=/share/home/jingxinhu/Program/phonopy/anaconda3/bin:${PATH}
export PATH=/share/apps/cmake/3.26/bin:$PATH
export PATH=/share/home/jingxinhu/Program/openbabel-3.1.1/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/share/home/jingxinhu/Program/progdyn/binall400
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/share/home/jingxinhu/Program/progdyn/TS7
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/share/home/jingxinhu/Program/progdyn/1g

#others
export PATH=$PATH:/opt/ibm/lsfsuite/lsf/bin
export GAUSS_EXEDIR=/share/home/jingxinhu/Program/progdyn/g16A03

#Multiwfn
ulimit -s unlimited
export OMP_STACKSIZE=200M
export Multiwfnpath=/share/home/jingxinhu/Program/Multiwfn_3.8_dev_bin_Linux
export PATH=$PATH:/share/home/jingxinhu/Program/Multiwfn_3.8_dev_bin_Linux
export PATH=$PATH:/share/home/jingxinhu/Program/progdyn/g16A03

#GAMESS
export GAMESS_DIR=/share/home/jingxinhu/Program/gamess/2021-R2
export PATH=$PATH:/share/home/jingxinhu/Program/gamess/2021-R2
export GMS=/share/home/jingxinhu/Program/gamess/2021-R2/rungms

#vasp
export PATH=/share/home/trlong/software/scripts_bin/vtstscripts-1029:${PATH}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/share/apps/anaconda/3.7/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/share/apps/anaconda/3.7/etc/profile.d/conda.sh" ]; then
        . "/share/apps/anaconda/3.7/etc/profile.d/conda.sh"
    else
        export PATH="/share/apps/anaconda/3.7/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH=/share/home/jingxinhu/Program/openbabel-openbabel-3.1.1/bin:$PATH
export PATH=/opt/ibm/lsfsuite/lsf/bin:$PATH
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH

