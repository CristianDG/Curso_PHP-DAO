CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuarios_insert`(
pdeslogin VARCHAR(64),
pdessenha VARCHAR(256)
)
BEGIN

	INSERT INTO tb_usuario(login, senha) VALUES(pdeslogin, pdessenha);
    
    SELECT * FROM tb_usuario WHERE id_usuario = LAST_INSERT_ID();

END