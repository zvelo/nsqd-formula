/var/nsqd:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 700
    - recurse:
      - user
      - group
      - mode

/etc/kubernetes/manifests/nsqd.manifest:
  file.managed:
    - source: salt://nsqd/nsqd.manifest
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - makedirs: true
    - dir_mode: 755
    #- require:
    #  - service: docker
    #  - service: kubelet
