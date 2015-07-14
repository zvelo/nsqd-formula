/etc/kubernetes/manifests/nsqd.manifest:
  file.managed:
    - source: salt://nsqd-formula/nsqd/nsqd.manifest
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - makedirs: true
    - dir_mode: 755
