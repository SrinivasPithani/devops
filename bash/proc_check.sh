#!/bin/bash
function do_stop ()
{
        for machine in `cut -f1 -d' ' | sort -u`
        do
                [[ "all" != "$host" && "$machine" != "$host" ]] && continue
                [[ "${machine}" == "localhost" ]] && cmd="eval" || cmd="ssh -nx ${machine}"
                echo
                echo $machine
                #build_proc_names "$process"
                #${cmd} "$LOCATION/portal/scripts/process.sh \"$proc_names\" stop"
        done
}

processes="/home/ruby/devops/bash/portal.process"

do_stop < $processes
