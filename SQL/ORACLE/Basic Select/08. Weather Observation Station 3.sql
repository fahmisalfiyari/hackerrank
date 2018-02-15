-- Author : Fahmi Salfiyari
-- Github : github.com/fahmisalfiyari

select distinct CITY from STATION where (MOD(ID,2)=0);

-- Pattern		| Pengertian
-- ----------------------------
-- MOD			| operasi modulo