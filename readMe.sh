#source : https://utux.fr/index.php?article100/configuration-et-deploiement-avec-ansible

# Lancer en dry-run (ne modifie rien) :
ansible-playbook -i production.ini deploy-newServer.yml --check

#Lancer le déploiement :
ansible-playbook -i production.ini deploy-newServer.yml

#récupérer tous les 'facts' (OS, version, ip...) d'une cible, ils peuvent être utilisés dans les playbooks
ansible hostname -m setup
