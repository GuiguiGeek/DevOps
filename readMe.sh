#source : https://utux.fr/index.php?article100/configuration-et-deploiement-avec-ansible

# Lancer en dry-run (ne modifie rien) :
ansible-playbook -i production.ini deploy-newserver.yml --check

#Lancer le déploiement :
ansible-playbook -i production.ini deploy-newserver.yml

#Lancer le déploiement sur web01.example.org uniquement :
ansible-playbook -i production.ini deploy-newserver.yml --limit web01.example.org

#récupérer tous les 'facts' (OS, version, ip...) d'une cible, ils peuvent être utilisés dans les playbooks
ansible hostname -m setup
