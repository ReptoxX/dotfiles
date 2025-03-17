#!/usr/bin/env bash

function func_gitLiveStableAllIntranet() {
    func_gitLiveStableIn tvg
    func_gitLiveStableIn tc
    func_gitLiveStableIn alpha
    func_gitLiveStableIn tts
    func_gitLiveStableIn ft
    func_gitLiveStableIn ftch
    func_gitCheckout test
    git merge origin/live_stable
    git status

    func_continueMerge
}

function func_gitLiveStableAll() {

    func_gitLiveStableIn tvg
    func_gitLiveStableIn alpha
    func_gitLiveStableIn econfirm
    func_gitLiveStableIn rtk
    func_gitLiveStableIn expitv
    func_gitLiveStableIn tc
    func_gitLiveStableIn wootb
    func_gitLiveStableIn dtps
    func_gitLiveStableIn tf
    func_gitLiveStableIn tts
    func_gitLiveStableIn ft
    func_gitLiveStableIn ftch
}

function func_continueMerge() {
    while true; do
        echo "Mit nächstem live Branch fortfahren? Bitte überprüfe alle Änderungen und füge sie zum commit hinzu. [Y/n] "
        read yn
        case $yn in
        [Nn]*) exit 1 ;;
        [Yy]* | *)
            func_gitAddCommitPush
            git push
            break
            ;;
        esac
    done
}

function func_gitLiveStableIn() {
    func_gitCheckout live_"$1"
    git merge origin/live_stable
    git status

    func_continueMerge
}

function func_gitCheckout() {
    git checkout "$1" && git fetch && git pull
}

function func_gitAddCommit() {
    if [ -z "$1" ]; then
        git add . && git commit --no-edit
    else
        git add . && git commit -m "$1"
    fi
}

function func_gitAddCommitPush() {
    git add . && git commit --no-edit || true
}
