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

// =====================================================
// ÁREA DE MATRÍCULAS
// =====================================================

export function AreaMatriculas({ setTelaAtual, setPesquisa }) {
  return (
    <View style={styles.container}>
      <Text style={styles.titulo}>Área de Matrículas</Text>

      <Text style={styles.subtitulo}>Gerenciamento de Matrículas</Text>

      <TouchableOpacity
        style={styles.botao}
        onPress={() => setTelaAtual('CadMatriculas')}>
        <Text style={styles.textoBotao}>Nova Matrícula</Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={styles.botao}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('ConsultarMatriculas');
        }}>
        <Text style={styles.textoBotao}>Consultar / Editar Matrículas</Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={styles.botaoVoltar}
        onPress={() => setTelaAtual('Home')}>
        <Text style={styles.textoBotao}>Voltar ao Menu</Text>
      </TouchableOpacity>
    </View>
  );
}

const formatarData = (texto) => {
  // Remove tudo que não for número
  const numeros = texto.replace(/\D/g, '');

  // Limita a 8 números: DDMMYYYY
  const limitado = numeros.slice(0, 8);

  if (limitado.length <= 2) {
    return limitado;
  }

  if (limitado.length <= 4) {
    return `${limitado.slice(0, 2)}/${limitado.slice(2)}`;
  }

  return `${limitado.slice(0, 2)}/${limitado.slice(2, 4)}/${limitado.slice(4)}`;
};

// =====================================================
// FORMULÁRIO DE MATRÍCULA
// =====================================================

export function FormMatricula({
  telaAtual,

  aluno,
  setAluno,

  curso,
  setCurso,

  situacao,
  setSituacao,

  dataMatricula,
  setDataMatricula,

  salvarEdicaoMatricula,
  lidarComCadastroMatricula,

  setTelaAtual,
}) {
  const isEdicao = telaAtual === 'EditarMatricula';

  return (
    <ScrollView contentContainerStyle={styles.scrollContainer}>
      <Text style={styles.titulo}>
        {isEdicao ? 'Editar Matrícula' : 'Cadastro de Matrícula'}
      </Text>

      <Text style={styles.subtitulo}>
        {isEdicao
          ? 'Modifique os dados abaixo'
          : 'Insira os dados da matrícula'}
      </Text>

      {/* ================================
          CURSO
      ================================= */}

      <Text style={styles.label}>Curso</Text>

      <TextInput
        style={styles.input}
        placeholder="Nome do curso"
        value={curso}
        onChangeText={setCurso}
      />

      {/* ================================
          SITUAÇÃO
      ================================= */}

      <Text style={styles.label}>Situação</Text>

      <View style={styles.areaSituacao}>
        {/* PENDENTE */}

        <TouchableOpacity
          style={styles.opcaoSituacao}
          onPress={() => setSituacao('Pendente')}>
          <View
            style={[
              styles.checkbox,
              situacao === 'Pendente' && styles.checkboxSelecionado,
            ]}>
            {situacao === 'Pendente' && <Text style={styles.check}>✓</Text>}
          </View>

          <Text style={styles.textoSituacao}>Pendente</Text>
        </TouchableOpacity>

        {/* ATIVO */}

        <TouchableOpacity
          style={styles.opcaoSituacao}
          onPress={() => setSituacao('Ativo')}>
          <View
            style={[
              styles.checkbox,
              situacao === 'Ativo' && styles.checkboxSelecionado,
            ]}>
            {situacao === 'Ativo' && <Text style={styles.check}>✓</Text>}
          </View>

          <Text style={styles.textoSituacao}>Ativo</Text>
        </TouchableOpacity>

        {/* DESATIVO */}

        <TouchableOpacity
          style={styles.opcaoSituacao}
          onPress={() => setSituacao('Desativo')}>
          <View
            style={[
              styles.checkbox,
              situacao === 'Desativo' && styles.checkboxSelecionado,
            ]}>
            {situacao === 'Desativo' && <Text style={styles.check}>✓</Text>}
          </View>

          <Text style={styles.textoSituacao}>Desativo</Text>
        </TouchableOpacity>
      </View>

      {/* ================================
          DATA DA MATRÍCULA
      ================================= */}

      <Text style={styles.label}>Data da Matrícula</Text>

      <TextInput
        style={styles.input}
        placeholder="DD/MM/AAAA"
        keyboardType="numeric"
        value={dataMatricula}
        onChangeText={(texto) => setDataMatricula(formatarData(texto))}
        maxLength={10}
      />

      {/* ================================
          BOTÃO SALVAR
      ================================= */}

      <TouchableOpacity
        style={styles.botaoSalvar}
        onPress={isEdicao ? salvarEdicaoMatricula : lidarComCadastroMatricula}>
        <Text style={styles.textoBotao}>
          {isEdicao ? 'Salvar Alterações' : 'Salvar Matrícula'}
        </Text>
      </TouchableOpacity>

      {/* ================================
          CANCELAR
      ================================= */}

      <TouchableOpacity
        style={styles.botaoVoltarForm}
        onPress={() =>
          setTelaAtual(isEdicao ? 'ConsultarMatriculas' : 'Matriculas')
        }>
        <Text style={styles.textoBotao}>Cancelar</Text>
      </TouchableOpacity>
    </ScrollView>
  );
}

// =====================================================
// CONSULTAR MATRÍCULAS
// =====================================================

export function ConsultarMatriculas({
  pesquisa,
  setPesquisa,

  matriculasFiltradas,

  iniciarEdicaoMatricula,

  setTelaAtual,
}) {
  return (
    <View style={styles.containerLista}>
      <Text style={styles.tituloLista}>Consultar Matrículas</Text>

      {/* PESQUISA */}

      <TextInput
        style={styles.inputPesquisa}
        placeholder="🔍 Pesquisar matrícula..."
        value={pesquisa}
        onChangeText={setPesquisa}
      />

      {/* LISTA */}

      <FlatList
        data={matriculasFiltradas}
        keyExtractor={(item) => item.id}
        style={{ width: '100%' }}
        contentContainerStyle={{
          paddingHorizontal: 20,
        }}
        ListEmptyComponent={
          <Text style={styles.textoVazio}>Nenhuma matrícula encontrada.</Text>
        }
        renderItem={({ item }) => (
          <View style={styles.cartaoMatricula}>
            <View style={{ flex: 1 }}>
              <Text style={styles.nomeMatricula}>{item.aluno}</Text>

              <Text style={styles.detalheMatricula}>Curso: {item.curso}</Text>

              <Text style={styles.detalheMatricula}>
                Situação: {item.situacao}
              </Text>

              <Text style={styles.detalheMatricula}>
                Data da matrícula: {item.dataMatricula}
              </Text>
            </View>

            {/* BOTÃO EDITAR */}

            <TouchableOpacity
              style={styles.botaoEditarCard}
              onPress={() => iniciarEdicaoMatricula(item)}>
              <Text style={styles.textoBotaoCard}>Editar</Text>
            </TouchableOpacity>
          </View>
        )}
      />

      {/* VOLTAR */}

      <TouchableOpacity
        style={styles.botaoVoltarForm}
        onPress={() => setTelaAtual('Matriculas')}>
        <Text style={styles.textoBotao}>Voltar</Text>
      </TouchableOpacity>
    </View>
  );
}

// =====================================================
// ESTILOS
// =====================================================

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

  // ============================
  // SITUAÇÃO
  // ============================

  areaSituacao: {
    width: '80%',
    backgroundColor: '#FFFFFF',
    borderRadius: 10,
    borderWidth: 1,
    borderColor: '#DDD',
    padding: 12,
    marginBottom: 15,
  },

  opcaoSituacao: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: 8,
  },

  checkbox: {
    width: 24,
    height: 24,
    borderWidth: 2,
    borderColor: '#999',
    borderRadius: 5,
    marginRight: 10,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#FFFFFF',
  },

  checkboxSelecionado: {
    backgroundColor: '#1565C0',
    borderColor: '#1565C0',
  },

  check: {
    color: '#FFFFFF',
    fontSize: 17,
    fontWeight: 'bold',
  },

  textoSituacao: {
    fontSize: 16,
    color: '#333',
  },

  // ============================
  // BOTÕES
  // ============================

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

  // ============================
  // PESQUISA
  // ============================

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

  // ============================
  // CARTÃO
  // ============================

  cartaoMatricula: {
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

  nomeMatricula: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#333',
  },

  detalheMatricula: {
    fontSize: 14,
    color: '#666',
    marginTop: 2,
  },

  botaoEditarCard: {
    backgroundColor: '#FFA000',
    paddingVertical: 8,
    paddingHorizontal: 15,
    borderRadius: 6,
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
