  
  # creation entreprise avec ces champs
   ResponseWithStatus data = await db!.createEnterprise(
        rccm: "12ddw",
        tax: "taxt",
        enterprisename: "schad",
        description: "desc",
        idnat: "zer",
        country: "rdc",
        city: "goma",
        town: "goma",
        commune: "goma",
        quater: "himbi",
        street: "hope",
        numberavenue: "12",
        bankname: 'occ',
        accountName: "freeman",
        codebank: "ok",
        code: "+243",
        number: "994480142",
        email: "schadrackkabinzo@gmail.com",
        internet: "upperz.com",
        codeEnteprise: 'aabb');

    print(data.errorMessage);


# mise a jours des informations de l'entreprise avec ces donnes mais ne sont pas obligatoire
         ResponseWithStatus data = await db!.updateEnterprise(
        rccm: "12ddw",
        tax: "taxt",
        description: "desc",
        idnat: "zer",
        country: "rdc",
         codeEnteprise: 'aabb',
        city: "beni",
        town: "goma",
        commune: "goma",
        quater: "himbi",
        street: "hope",
        numberavenue: "12",
        bankname: 'occ',
        accountName: "freeman",
        codebank: "ok",
        code: "+243",
        number: "9944801423",
        internet: "upperz.com",
        enterpriseId: 1);
    print(data.errorMessage);


  # create user

    ResponseWithStatus data = await db!.createuser(
      country: "rdc",
      city: "beni",
      town: "goma",
      commune: "goma",
      quater: "himbi",
      street: "hope",
      numberavenue: "12",
      bankname: 'occ',
      accountName: "freeman",
      codebank: "ok",
      code: "+243",
      number: "9944801423",
      internet: "upperz.com",
      enterpriseId: 1,
      email: 'hop@gmail.com',
      firstname: 'schadrack',
      secondname: 'kabinzo',
      password: '1234',
      username: 'cia',
      descriptionpermission: 'add',
      descriptionrole: 'roledesc',
      designationpermission: 'rolepermission',
      designationrole: 'roledesignation',
    );
### 


Dans ce fichier y aura tout c'est qui concerne l'entreprise en terme de fonctionnalité y compris la modificatio de celle-ci

 # methodes
  - createEnterprise
  - updateEnterprise
  - createuser
  - login (similation)
  - getemployes
  - getenterpriseinfo
  - updateEnterprisePhoto
  - insertproduct

  1.creation d'entreprise 
  nous aurons les champs suivant mais tout les champs ne sont pas requisent
  
     ResponseWithStatus data = await db!.createEnterprise(
        rccm: "12ddw",
        tax: "taxt",
        enterprisename: "schad",
        description: "desc",
        idnat: "zer",
        country: "rdc",
        city: "goma",
        town: "goma",
        commune: "goma",
        quater: "himbi",
        street: "hope",
        numberavenue: "12",
        bankname: 'occ',
        accountName: "freeman",
        codebank: "ok",
        code: "+243",
        number: "994480142",
        email: "schadrackkabinzo@gmail.com",
        internet: "upperz.com",
        codeEnteprise: 'aabb');

  2) mise à d'information de l'entreprise
       pour  la mise à jours de l'entreprise,on peut ou n'est pas faire pour tout les champs;à l'exeception de l'id entreprise
       
       ResponseWithStatus data = await db!.updateEnterprise(
        rccm: "12ddw",
        tax: "taxt",
        description: "desc",
        idnat: "zer",
        country: "rdc",
         codeEnteprise: 'aabb',
        city: "beni",
        town: "goma",
        commune: "goma",
        quater: "himbi",
        street: "hope",
        numberavenue: "12",
        bankname: 'occ',
        accountName: "freeman",
        codebank: "ok",
        code: "+243",
        number: "9944801423",
        internet: "upperz.com",
        enterpriseId: 1);
        
  3) affichage des informations pour l'entreprise
    
   db.getenterpriseinfo()
   cette methode retourne un map de (entreprise,address,contact,picture,support)
   
  4)mise à jours de la photo de l'entreprise
  D s cette fonctionnalité on peut modifier la photo ou inserer pour une nouvelle fois
    db.updateEnterprisePhoto( String file,
 int enterpriseId,)
 
 5)login
 cette partie etait mise comme une simillation de l'autentification
 db.login(username: 'cia', password: 'pass');
 celle-ci retourne le credential en cas de success et les info de l'utilisateur
 
#statuscode
  success => 200;
  error => 400;
  notfound => 404;
