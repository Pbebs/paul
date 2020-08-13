
-
- Base de données: `voitures`
-

- ------------------------------------------------ 

-
- Structure de la table `proprietaire`
-

CREATE  TABLE  ` proprietaire ` (
  ` Num `  int ( 11 ) NOT  NULL ,
  ` Nom `  varchar ( 80 ) DEFAULT NULL
) MOTEUR = CHARSET PAR DÉFAUT InnoDB = latin1;



- ------------------------------------------------ --------

-
- Structure de la table `vehicule`
-

CREATE  TABLE  ` véhicule ` (
  ` Matricule `  varchar ( 80 ) NOT  NULL ,
  ` Nom `  varchar ( 80 ) DEFAULT NULL ,
  ` Typemodel `  varchar ( 20 ) DEFAULT NULL
) MOTEUR = CHARSET PAR DÉFAUT InnoDB = latin1;

-
- Index pour les tables déchargées
-

-
- Index pour la table `model`
-
ALTER  TABLE  ` modèle `
  AJOUTER PRIMAIRE  KEY ( ` numero_type ` );

-
- Index pour la table `posseder`
-
ALTER  TABLE  ` posseder `
  ADD KEY  ` matvehi ` ( ` matvehi ` ),
  ADD KEY  ` num_cli ` ( ` num_cli ` );

-
- Index pour la table `proprietaire`
-
ALTER  TABLE  ` proprietaire `
  AJOUTER UNE  CLÉ PRIMAIRE ( « num » );

-
- Index pour la table `vehicule`
-
ALTER  TABLE  ` véhicule `
  AJOUTER PRIMAIRE  KEY ( ` matricule ` ),
  ADD KEY  ` typemodel ` ( ` typemodel ` );

-
- AUTO_INCREMENT pour les tables déchargées
-

-
- AUTO_INCREMENT pour la table `proprietaire`
-
ALTER  TABLE  ` proprietaire `
  ACTUALISATION  ` num `  int ( 11 ) NOT  NULL AUTO_INCREMENT, AUTO_INCREMENT = 2 ;

-
- Contraintes pour les tables déchargées
-

-
- Contraintes pour la table `posseder`
-
ALTER  TABLE  ` posseder `
  ADD CONTRAINTE  ` posseder_ibfk_1 `  FOREIGN KEY ( ` matvehi ` ) Références  ` véhicule ` ( ` matricule ` ),
  ADD CONTRAINTE  ` posseder_ibfk_2 `  FOREIGN KEY ( ` num_cli ` ) Références  ` proprietaire ` ( ` num ` );

-
- Contraintes pour la table `vehicule`
-
ALTER  TABLE  ` véhicule `
  ADD CONTRAINTE  ` vehicule_ibfk_1 `  FOREIGN KEY ( ` typemodel ` ) Références  ` modèle ` ( ` numero_type ` );
COMMIT ;

/ * ! 40101 SET CHARACTER_SET_CLIENT = @ OLD_CHARACTER_SET_CLIENT * / ;
/ * ! 40101 SET CHARACTER_SET_RESULTS = @ OLD_CHARACTER_SET_RESULTS * / ;
/ * ! 40101 SET COLLATION_CONNECTION = @ OLD_COLLATION_CONNECTION * / ;
