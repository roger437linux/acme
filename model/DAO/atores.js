const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const insertAtor = async function (dadosAtor) {
    try {
            let sql = `insert into Atores (nome,nascimento,falecimento,foto,id_sexo) values ('${dadosAtor.nome}','${dadosAtor.nascimento}','${dadosAtor.falecimento}','${dadosAtor.foto}','${dadosAtor.id_sexo}');`
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
const updateAtor = async function (id, dadosAtor) {
    try{
    let sql = `UPDATE Atores SET nome = '${dadosAtor.nome}', nascimento = '${dadosAtor.nascimento}', falecimento = '${dadosAtor.falecimento}', foto = '${dadosAtor.foto}', id_sexo = '${dadosAtor.id_sexo}' WHERE id = ${id}`
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
const deleteAtor = async function (search) {
    try {
        const filmes = `delete from ator_filme where id_ator = ${search}`
        const nacionalidades = `delete from ator_nacionalidade where id_ator = ${search}`
        const ator = `delete from atores where id = ${search}`
        let resultApagarFilmes = await prisma.$executeRawUnsafe(filmes)
        let resultApagarNacionalidade = await prisma.$executeRawUnsafe(nacionalidades)
        let resultApagarAtor = await prisma.$executeRawUnsafe(ator)
        if (resultApagarAtor) {
            return true
        } else {
            return false
        }
    } catch (error) {
        return false
    }
}


async function pegarUltimoId() {
    const sql = `SELECT cast(last_insert_id() AS DECIMAL) AS id FROM Atores LIMIT 1;`
    let pegarId = await prisma.$queryRawUnsafe(sql)
    return pegarId
}
const selectAllAtores = async function () {
    try {
        const sql = `select * from Atores`;
        let result = await prisma.$queryRawUnsafe(sql);
        return result;
    } catch (error) {
        return false
    }
}

const selectAllAtoresSort = async function (sort) {
    try {
        const sql = `select * from Atores ORDER BY ${sort}`;
        let results = await prisma.$queryRawUnsafe(sql);
        return results;
    } catch (error) {
        return false
    }
}

const selectByIdAtor = async function (search) {
    try {
        const sql = `SELECT * FROM Atores WHERE id = ${search}`;
        let result = await prisma.$queryRawUnsafe(sql);
        return result
    } catch (error) {
        return false
    }
}

const selectByIdFilme = async function (search) {
    try {
        const sql = `SELECT Atores.id,Atores.nome,Atores.foto FROM Atores JOIN ator_filme ON Atores.id = ator_filme.id_ator WHERE id_filme = ${search}`;
        let result = await prisma.$queryRawUnsafe(sql);
        return result
    } catch (error) {
        return false
    }
}

module.exports = {
    insertAtor,
    updateAtor,
    deleteAtor,
    pegarUltimoId,
    selectAllAtores,
    selectAllAtoresSort,
    selectByIdAtor,
    selectByIdFilme,
}