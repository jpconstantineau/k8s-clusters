# K3S Kubernetes Clusters provisionned using Flux 

## Clusters

### OCI(jptodev) production : jptodev 

``` mermaid
flowchart TD
    node1 --> node2
    node1 --> node3
    node1(10.0.0.19)
    node3(10.0.0.24)
    node2(10.0.0.213)

    nodea --> nodeb
    nodea --> nodec
    nodea(jptodev-1)
    nodeb(jptodev-2)
    nodec(jptodev-3)
```

``` mermaid
classDiagram
class default{
    +bike (bike.jpconstantineau.com)
    +filemanager (fm.jpto.dev)
    +mechmarket (mechmarket.jpconstantineau.com)
    +store (store.jpconstantineau.com)
    -echo-server (echo-server.$SECRET_DOMAIN3)
    -hajimari (hajimari.$SECRET_DOMAIN3)
}
class kubesystem{
    metrics-server
    reflector
    reloader
}
class networking{
    traefik
}
class systemupgrade{
    systemupgradecontroller
}
class fluxsystem{
  charts
}
class certmanager{
  letsencrypt
}
```


### OCI(jpconstantineau) oci - not as shown


``` mermaid
flowchart TD
    node1 --> node2
    node1 --> node3
    node1(10.0.0.235)
    node2(10.0.0.24)
    node3(10.0.0.213)

    nodea <-.-> nodeb
    nodea --> nodec
    nodea(OCI3-0)
    nodeb(OCI3-1 ?)
    nodec(OCI3-2 ?)
```

``` mermaid
classDiagram
class default{
    +echo-server (echo-server.oci.jpto.dev)
    +hajimari (hajimari.oci.jpto.dev)
}
class kubesystem{
    metrics-server
    reflector
    reloader
}
class networking{
    traefik
}
class systemupgrade{
    systemupgradecontroller
}
class fluxsystem{
  charts
}
class certmanager{
  letsencrypt
}
```


### Raspberry Pi 4 8Gb Cluster (rpi4)

``` mermaid
flowchart TD
    node1 --> node4
    node1 --> node5
    node1 --> node6
    node1 --> node7
    node2 --> node4
    node2 --> node5
    node2 --> node6
    node2 --> node7
    node3 --> node4
    node3 --> node5
    node3 --> node6
    node3 --> node7
    node1(192.168.50.51)
    node2(192.168.50.52)
    node3(192.168.50.53)
    node4(192.168.50.54)
    node5(192.168.50.55)
    node6(192.168.50.56)
    node7(192.168.50.57)
```


``` mermaid
classDiagram
class default{
    +echo-server (echo-server.192-168-50-60.nip.io)
    +hajimari (hajimari.192-168-50-60.nip.io)
}
class kubesystem{
    metrics-server
    reflector
    reloader
}
class networking{
    traefik
}
class systemupgrade{
    systemupgradecontroller
}
class fluxsystem{
  charts
}
class certmanager{
  letsencrypt
}
```
