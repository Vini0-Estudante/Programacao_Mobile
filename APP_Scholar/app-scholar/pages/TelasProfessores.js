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

export function AreaProfessores({ setTelaAtual, setPesquisa }) {
  return (
    <View style={styles.container}>
      <Text style={styles.titulo}>Área do Professor</Text>
      <Text style={styles.subtitulo}>Gerenciamento de Docentes</Text>
      <TouchableOpacity
        style={styles.botao}
        onPress={() => setTelaAtual('CadProf')}>
        <Text style={styles.textoBotao}>Novo Cadastro</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botao}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('ConsultarProf');
        }}>
        <Text style={styles.textoBotao}>Consultar / Editar Professores</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botaoVoltar}
        onPress={() => setTelaAtual('Home')}>
        <Text style={styles.textoBotao}>Voltar ao Menu</Text>
      </TouchableOpacity>
    </View>
  );
}

export function FormProfessor({
  telaAtual,
  nomeProf,
  setNomeProf,
  emailProf,
  setEmailProf,
  matriculaProf,
  setMatriculaProf,
  departamentoProf,
  setDepartamentoProf,
  salvarEdicaoProf,
  lidarComCadastroProf,
  setTelaAtual,
}) {
  const isEdicao = telaAtual === 'EditarProfessor';
  return (
    <ScrollView contentContainerStyle={styles.scrollContainer}>
      <Text style={styles.titulo}>
        {isEdicao ? 'Editar Professor' : 'Cadastro de Professor'}
      </Text>
      <Text style={styles.subtitulo}>
        {isEdicao ? 'Modifique os dados abaixo' : 'Insira os dados do docente'}
      </Text>
      <Text style={styles.label}>Nome Completo</Text>
      <TextInput
        style={styles.input}
        value={nomeProf}
        onChangeText={setNomeProf}
      />
      <Text style={styles.label}>E-mail Institucional</Text>
      <TextInput
        style={styles.input}
        keyboardType="email-address"
        autoCapitalize="none"
        value={emailProf}
        onChangeText={setEmailProf}
      />
      <Text style={styles.label}>Matrícula do Servidor</Text>
      <TextInput
        style={styles.input}
        keyboardType="numeric"
        value={matriculaProf}
        onChangeText={setMatriculaProf}
      />
      <Text style={styles.label}>Departamento/Área</Text>
      <TextInput
        style={styles.input}
        value={departamentoProf}
        onChangeText={setDepartamentoProf}
      />
      <TouchableOpacity
        style={styles.botaoSalvar}
        onPress={isEdicao ? salvarEdicaoProf : lidarComCadastroProf}>
        <Text style={styles.textoBotao}>
          {isEdicao ? 'Salvar Alterações' : 'Salvar Cadastro'}
        </Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botaoVoltarForm}
        onPress={() =>
          setTelaAtual(isEdicao ? 'ConsultarProf' : 'Professores')
        }>
        <Text style={styles.textoBotao}>Cancelar</Text>
      </TouchableOpacity>
    </ScrollView>
  );
}

export function ConsultarProfessores({
  pesquisa,
  setPesquisa,
  professoresFiltrados,
  iniciarEdicaoProf,
  setTelaAtual,
}) {
  return (
    <View style={styles.containerLista}>
      <Text style={styles.tituloLista}>Consultar Professores</Text>
      <TextInput
        style={styles.inputPesquisa}
        placeholder="🔍 Pesquisar professor..."
        value={pesquisa}
        onChangeText={setPesquisa}
      />
      <FlatList
        data={professoresFiltrados}
        keyExtractor={(item) => item.id}
        style={{ width: '100%' }}
        contentContainerStyle={{ paddingHorizontal: 20 }}
        ListEmptyComponent={
          <Text style={styles.textoVazio}>Nenhum professor encontrado.</Text>
        }
        renderItem={({ item }) => (
          <View style={styles.cartaoAluno}>
            <View style={{ flex: 1 }}>
              <Text style={styles.nomeAluno}>{item.nome}</Text>
              <Text style={styles.detalheAluno}>
                Matrícula: {item.matricula}
              </Text>
              <Text style={styles.detalheAluno}>Depto: {item.curso}</Text>
            </View>
            <TouchableOpacity
              style={styles.botaoEditarCard}
              onPress={() => iniciarEdicaoProf(item)}>
              <Text style={styles.textoBotaoCard}>Editar</Text>
            </TouchableOpacity>
          </View>
        )}
      />
      <TouchableOpacity
        style={styles.botaoVoltarForm}
        onPress={() => setTelaAtual('Professores')}>
        <Text style={styles.textoBotao}>Voltar</Text>
      </TouchableOpacity>
    </View>
  );
}

// Estilos (idênticos aos anteriores para consistência visual)
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
  textoBotao: { fontSize: 18, fontWeight: 'bold', color: '#FFFFFF' },
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
  cartaoAluno: {
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
  nomeAluno: { fontSize: 18, fontWeight: 'bold', color: '#333' },
  detalheAluno: { fontSize: 14, color: '#666', marginTop: 2 },
  botaoEditarCard: {
    backgroundColor: '#FFA000',
    paddingVertical: 8,
    paddingHorizontal: 15,
    borderRadius: 6,
  },
  textoBotaoCard: { color: '#FFF', fontWeight: 'bold', fontSize: 14 },
  textoVazio: {
    color: '#999',
    fontSize: 16,
    marginTop: 30,
    textAlign: 'center',
  },
});
