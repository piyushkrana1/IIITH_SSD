

select D.Mgr_ssn,count(*) from DEPARTMENT AS D ,DEPENDENT AS DT where D.Mgr_ssn=DT.Essn and D.Mgr_ssn in (select D.Mgr_ssn from DEPARTMENT AS D WHERE D.Dnumber in (SELECT D.Dnumber from DEPT_LOCATIONS as D group by D.Dnumber HAVING count(*)>1)
) group by D.Mgr_ssn;