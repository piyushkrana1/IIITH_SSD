SELECT  distinct CONCAT(E.Fname,E.Lname),E.Ssn,E.Dno,D.Dname  FROM EMPLOYEE AS E ,DEPARTMENT AS D where E.Ssn in (select distinct Mgr_ssn from DEPARTMENT AS D ,PROJECT AS P where D.Dnumber IN (select distinct Dnum from WORKS_ON AS W , PROJECT AS P where W.Pno=P.Pnumber AND Pnumber in(Select DISTINCT Pno FROM WORKS_ON WHERE EssN IN (SELECT EssN  FROM (select  Essn, IFNULL(Hours,0) as Hours
from WORKS_ON) AS W  GROUP by Essn having sum(W.Hours)<40)))) AND E.Dno=D.Dnumber;