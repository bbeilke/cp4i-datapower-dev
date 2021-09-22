# cp4i-datapower-dev

Attach to this datapower : oc  -n datapower attach -it pod/dev1-0 -c datapower

Enable the web-gui:

-------------------

idg# config
idg(config)# web-mgmt
idg(config web-mgmt)# admin-state enabled
exit

-------------------
Forward the web-gui to your machine :

-------------------------------------

kubectl port-forward dev1-0 9090:9090 --namespace datapower

-------------------------------------
