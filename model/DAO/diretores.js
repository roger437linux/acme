const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const insertDiretor = async function (dadosDiretor) {
    try {
            let sql = `insert into Diretores (nome,nascimento,foto,id_sexo) values ('${dadosDiretor.nome}','${dadosDiretor.nascimento}','${dadosDiretor.foto}','${dadosDiretor.id_sexo}');`
        let result = await prisma.$executeRawUnsafe(sql)
        if (result) {
            return true
        } else {
            return false
        }
    } catch (error) {
        return false
    }
}
const updateDiretor = async function (id, dadosDiretor) {
    try{
    let sql = `UPDATE Diretores SET nome = '${dadosDiretor.nome}', nascimento = '${dadosDiretor.nascimento}', foto = '${dadosDiretor.foto}', id_sexo = '${dadosDiretor.id_sexo}' WHERE id = ${id}`
        let result = await prisma.$executeRawUnsafe(sql)
        if(result) {
            return true
        } else {
            return false
        }
    } catch (error){
        return false
    }

}
const deleteDiretor = async function (search) {
    try {
        const filmes = `delete from diretor_filme where id_diretor = ${search}`
        const nacionalidades = `delete from diretor_nacionalidade where id_diretor = ${search}`
        const diretor = `delete from diretores where id = ${search}`
        let resultApagarFilmes = await prisma.$executeRawUnsafe(filmes)
        let resultApagarNacionalidade = await prisma.$executeRawUnsafe(nacionalidades)
        let resultApagarDiretor = await prisma.$executeRawUnsafe(diretor)
        if (resultApagarDiretor) {
            return true
        } else {
            return false
        }
    } catch (error) {
        return false
    }
}

async function pegarUltimoId() {
    const sql = `SELECT cast(last_insert_id() AS DECIMAL) AS id FROM Diretores LIMIT 1;`
    let pegarId = await prisma.$queryRawUnsafe(sql)
    return pegarId
}
const selectAllDiretores = async function () {
    try {
        const sql = `select * from Diretores`;
        let result = await prisma.$queryRawUnsafe(sql);
        return result;
    } catch (error) {
        return false
    }
}
const selectAllDiretoresSort = async function (sort) {
    try {
        const sql = `select * from Diretores ORDER BY ${sort}`;
        let results = await prisma.$queryRawUnsafe(sql);
        return results;
    } catch (error) {
        return false
    }
}

const selectByIdDiretor = async function (search) {
    try {
        const sql = `SELECT * FROM Diretores WHERE id = ${search}`;
        let result = await prisma.$queryRawUnsafe(sql);
        return result
    } catch (error) {
        return false
    }
}

const selectByIdFilme = async function (search) {
    try {
        const sql = `SELECT Diretores.id,diretores.nome,diretores.foto FROM Diretores JOIN diretor_filme ON Diretores.id = diretor_filme.id_diretor WHERE id_filme = ${search}`;
        let result = await prisma.$queryRawUnsafe(sql);
        return result
    } catch (error) {
        return false
    }
}

module.exports = {
    insertDiretor,
    updateDiretor,
    deleteDiretor,
    pegarUltimoId,
    selectAllDiretores,
    selectAllDiretoresSort,
    selectByIdDiretor,
    selectByIdFilme,
}