import React from 'react';
import {
  StyleSheet,
  Text,
  TouchableOpacity,
  TextInput,
  View,
  ScrollView,
  FlatList,
} from 'react-native';

// ===============================
// ÁREA DE CURSOS
// ===============================

export function AreaCursos({ setTelaAtual, setPesquisa }) {
  return (
    <View style={styles.container}>
      <Text style={styles.titulo}>Área de Cursos</Text>

      <Text style={styles.subtitulo}>
        Gerenciamento de Cursos
      </Text>

      <TouchableOpacity
        style={styles.botao}
        onPress={() => setTelaAtual('CadCursos')}>
        <Text style={styles.textoBotao}>Novo Cadastro</Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={styles.botao}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('ConsultarCursos');
        }}>
        <Text style={styles.textoBotao}>
          Consultar / Editar Cursos
        </Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={styles.botaoVoltar}
        onPress={() => setTelaAtual('Home')}>
        <Text style={styles.textoBotao}>Voltar ao Menu</Text>
      </TouchableOpacity>
    </View>
  );
}

// ===============================
// FORMULÁRIO DE CURSO
// ===============================

export function FormCurso({
  telaAtual,
  nomeCurso,
  setNomeCurso,
  cargaHoraria,
  setCargaHoraria,
  duracao,
  setDuracao,
  descricao,
  setDescricao,
  salvarEdicaoCurso,
  lidarComCadastroCurso,
  setTelaAtual,
}) {
  const isEdicao = telaAtual === 'EditarCurso';

  return (
    <ScrollView contentContainerStyle={styles.scrollContainer}>
      <Text style={styles.titulo}>
        {isEdicao ? 'Editar Curso' : 'Cadastro de Curso'}
      </Text>

      <Text style={styles.subtitulo}>
        {isEdicao
          ? 'Modifique os dados abaixo'
          : 'Insira os dados do curso'}
      </Text>

      <Text style={styles.label}>Nome do Curso</Text>

      <TextInput
        style={styles.input}
        placeholder="Ex.: Bacharelado em Direito"
        value={nomeCurso}
        onChangeText={setNomeCurso}
      />

      <Text style={styles.label}>Carga Horária</Text>

      <TextInput
        style={styles.input}
        placeholder="Ex.: 3600"
        keyboardType="numeric"
        value={cargaHoraria}
        onChangeText={setCargaHoraria}
      />

      <Text style={styles.label}>Duração</Text>

      <TextInput
        style={styles.input}
        placeholder="Ex.: 5 anos"
        value={duracao}
        onChangeText={setDuracao}
      />

      <Text style={styles.label}>Descrição</Text>

      <TextInput
        style={[styles.input, styles.inputDescricao]}
        placeholder="Descreva o curso..."
        value={descricao}
        onChangeText={setDescricao}
        maxLength={300}
        multiline={true}
        numberOfLines={5}
        textAlignVertical="top"
      />

      <Text style={styles.contador}>
        {descricao.length}/300 caracteres
      </Text>

      <TouchableOpacity
        style={styles.botaoSalvar}
        onPress={
          isEdicao
            ? salvarEdicaoCurso
            : lidarComCadastroCurso
        }>
        <Text style={styles.textoBotao}>
          {isEdicao
            ? 'Salvar Alterações'
            : 'Salvar Cadastro'}
        </Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={styles.botaoVoltarForm}
        onPress={() =>
          setTelaAtual(
            isEdicao
              ? 'ConsultarCursos'
              : 'Cursos'
          )
        }>
        <Text style={styles.textoBotao}>Cancelar</Text>
      </TouchableOpacity>
    </ScrollView>
  );
}

// ===============================
// CONSULTAR CURSOS
// ===============================

export function ConsultarCursos({
  pesquisa,
  setPesquisa,
  cursosFiltrados,
  iniciarEdicaoCurso,
  setTelaAtual,
}) {
  return (
    <View style={styles.containerLista}>
      <Text style={styles.tituloLista}>
        Consultar Cursos
      </Text>

      <TextInput
        style={styles.inputPesquisa}
        placeholder="🔍 Pesquisar curso..."
        value={pesquisa}
        onChangeText={setPesquisa}
      />

      <FlatList
        data={cursosFiltrados}
        keyExtractor={(item) => item.id}
        style={{ width: '100%' }}
        contentContainerStyle={{
          paddingHorizontal: 20,
        }}
        ListEmptyComponent={
          <Text style={styles.textoVazio}>
            Nenhum curso encontrado.
          </Text>
        }
        renderItem={({ item }) => (
          <View style={styles.cartaoCurso}>
            <View style={{ flex: 1 }}>
              <Text style={styles.nomeCurso}>
                {item.nome}
              </Text>

              <Text style={styles.detalheCurso}>
                Carga horária: {item.cargaHoraria} horas
              </Text>

              <Text style={styles.detalheCurso}>
                Duração: {item.duracao}
              </Text>

              <Text style={styles.detalheCurso}>
                {item.descricao}
              </Text>
            </View>

            <TouchableOpacity
              style={styles.botaoEditarCard}
              onPress={() =>
                iniciarEdicaoCurso(item)
              }>
              <Text style={styles.textoBotaoCard}>
                Editar
              </Text>
            </TouchableOpacity>
          </View>
        )}
      />

      <TouchableOpacity
        style={styles.botaoVoltarForm}
        onPress={() => setTelaAtual('Cursos')}>
        <Text style={styles.textoBotao}>
          Voltar
        </Text>
      </TouchableOpacity>
    </View>
  );
}

// ===============================
// ESTILOS
// ===============================

const styles = StyleSheet.create({

  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5F5F5',
  },

  containerLista: {
    flex: 1,
    backgroundColor: '#F5F5F5',
    paddingTop: 50,
    alignItems: 'center',
    paddingBottom: 20,
  },

  titulo: {
    fontSize: 32,
    fontWeight: 'bold',
    color: '#1565C0',
    textAlign: 'center',
  },

  tituloLista: {
    fontSize: 26,
    fontWeight: 'bold',
    color: '#1565C0',
    marginBottom: 15,
  },

  subtitulo: {
    fontSize: 18,
    marginBottom: 40,
    color: '#666',
    textAlign: 'center',
    paddingHorizontal: 20,
  },

  botao: {
    width: '80%',
    backgroundColor: '#e01f29',
    padding: 15,
    borderRadius: 10,
    marginBottom: 15,
    alignItems: 'center',
  },

  botaoVoltar: {
    width: '80%',
    backgroundColor: '#1565C0',
    padding: 15,
    borderRadius: 10,
    marginTop: 40,
    alignItems: 'center',
  },

  textoBotao: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#FFFFFF',
  },

  scrollContainer: {
    flexGrow: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5F5F5',
    paddingVertical: 40,
  },

  label: {
    width: '80%',
    textAlign: 'left',
    fontSize: 14,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 5,
  },

  input: {
    width: '80%',
    height: 50,
    backgroundColor: '#FFFFFF',
    borderRadius: 10,
    paddingHorizontal: 15,
    fontSize: 16,
    borderWidth: 1,
    borderColor: '#DDD',
    marginBottom: 15,
  },

  botaoSalvar: {
    width: '80%',
    backgroundColor: '#2E7D32',
    padding: 15,
    borderRadius: 10,
    marginTop: 15,
    alignItems: 'center',
  },

  botaoVoltarForm: {
    width: '80%',
    backgroundColor: '#1565C0',
    padding: 15,
    borderRadius: 10,
    marginTop: 15,
    alignItems: 'center',
  },

  inputPesquisa: {
    width: '90%',
    height: 45,
    backgroundColor: '#FFFFFF',
    borderRadius: 8,
    paddingHorizontal: 15,
    fontSize: 16,
    borderWidth: 1,
    borderColor: '#CCC',
    marginBottom: 20,
  },

  cartaoDisciplina: {
    width: '100%',
    backgroundColor: '#FFF',
    padding: 15,
    borderRadius: 8,
    marginBottom: 10,
    flexDirection: 'row',
    alignItems: 'center',
    borderWidth: 1,
    borderColor: '#E0E0E0',
  },

  nomeDisciplina: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 5,
  },

  detalheDisciplina: {
    fontSize: 14,
    color: '#666',
    marginTop: 2,
  },

  botaoEditarCard: {
    backgroundColor: '#FFA000',
    paddingVertical: 8,
    paddingHorizontal: 15,
    borderRadius: 6,
    marginLeft: 10,
  },

  textoBotaoCard: {
    color: '#FFF',
    fontWeight: 'bold',
    fontSize: 14,
  },

  textoVazio: {
    color: '#999',
    fontSize: 16,
    marginTop: 30,
    textAlign: 'center',
  },

});
