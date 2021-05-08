FROM opensuse/leap:15.2

RUN zypper --non-interactive addrepo -f https://download.opensuse.org/repositories/openSUSE:Tools/openSUSE_15.2/openSUSE:Tools.repo && \
    zypper --non-interactive --quiet --gpg-auto-import-keys refresh && \
    zypper --non-interactive install -y osc build which gzip
ENV PAGER=cat
