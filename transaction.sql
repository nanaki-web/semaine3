-- 1 La base de données ne contient actuellement que des employés en postes. Il a été choisi de garder en base une liste des anciens collaborateurs de l'entreprise parti en retraite. Il va donc vous falloir ajouter une ligne dans la table posts pour référencer les employés à la retraite.


-- USE gescom_2020_08_20;
-- DROP TABLE IF EXISTS posts
-- CREATE TABLE posts
-- (
--     pos_id INT PRIMARY KEY NOT NULL,
--     pos_libelle varchar (50),
--     retraité(e) varchar (50)
-- )



insert into posts (pos_libelle) VALUES ('retraité(e)');


-- 2 Décrire les opérations qui seront à réaliser sur la table posts.

1- rechercher dans la table employés Amithy Hannah et la changer son status poste actuelle à retraitée .
2- retrouver le pépiniériste le plus ancien du magasin d/arras . et lui changer son poste à celui de Manageur .
3- augmentation du nouveau manageur de son salaire de 5% .
4- passer les anciens collégues de nouveau manageur sous son commandement . 

-- 3 Ecrire les requêtes correspondant à ces opérations

1- update employes 
    set emp_pos_id = pos_id
    where pos_libelle like '%retraité';


SELECT *
FROM employees e
WHERE e.emp_lastname = 'Hannah' AND e.emp_firstname = 'Amity'

update employees 
set employees.emp_pos_id = employees.pos_id
JOIN posts
ON emp_pos_id = pos_id
where pos_libelle like '%retraité'


SELECT *
FROM employees
where min()

