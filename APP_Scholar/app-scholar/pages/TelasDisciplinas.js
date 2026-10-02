import React from 'react';

import {
  StyleSheet,
  Text,
  TouchableOpacity,
  TextInput,
  View,
  ScrollView,
} from 'react-native';

// =====================================================
// ÁREA DE DISCIPLINAS
// =====================================================

export function AreaDisciplinas({ setTelaAtual, setPesquisa }) {
  return (
    <View style={styles.container}>

      <Text style={styles.titulo}>
        Área de Disciplinas
      </Text>

      <Text style={styles.subtitulo}>
        Gerenciamento de Disciplinas
      </Text>

      <TouchableOpacity
        style={styles.botao}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('CadDisciplinas');
        }}
      >
        <Text style={styles.textoBotao}>
          Novo Cadastro
        </Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={styles.botao}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('ConsultarDisciplinas');
        }}
      >
        <Text style={styles.textoBotao}>
          Consultar / Editar Disciplinas
        </Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={styles.botaoVoltar}
        onPress={() => setTelaAtual('Home')}
      >
        <Text style={styles.textoBotao}>
          Voltar ao Menu
        </Text>
      </TouchableOpacity>

    </View>
  );
}

// =====================================================
// FORMULÁRIO DE DISCIPLINA
// =====================================================

export function FormDisciplina({
  telaAtual,

  nomeDisciplina,
  setNomeDisciplina,

  profResp,
  setProfResp,

  cargaHorariaDisciplina,
  setCargaHorariaDisciplina,

  salvarEdicaoDisciplina,
  lidarComCadastroDisciplina,

  setTelaAtual,

  // Professores vindos da "simulated DB"
  professores,
}) {

  const modoEdicao = telaAtual === 'EditarDisciplina';

  return (
    <ScrollView
      contentContainerStyle={styles.scrollContainer}
    >

      <View style={styles.container}>

        {/* TÍTULO */}

        <Text style={styles.titulo}>
          {modoEdicao
            ? 'Editar Disciplina'
            : 'Cadastro de Disciplina'}
        </Text>

        <Text style={styles.subtitulo}>
          {modoEdicao
            ? 'Modifique os dados abaixo'
            : 'Insira os dados da disciplina'}
        </Text>

        {/* =====================================================
            NOME DA DISCIPLINA
        ===================================================== */}

        <Text style={styles.label}>
          Nome da Disciplina
        </Text>

        <TextInput
          style={styles.input}
          placeholder="Ex.: Matemática"
          value={nomeDisciplina}
          onChangeText={setNomeDisciplina}
        />

        {/* =====================================================
            PROFESSOR RESPONSÁVEL
        ===================================================== */}

        <Text style={styles.label}>
          Professor Responsável
        </Text>

        <View style={styles.listaProfessores}>

          {!professores || professores.length === 0 ? (

            <Text style={styles.textoVazio}>
              Nenhum professor cadastrado.
            </Text>

          ) : (

            professores.map((professor) => (

              <TouchableOpacity
                key={professor.id}
                style={[
                  styles.opcaoProfessor,

                  profResp === professor.nome &&
                    styles.opcaoProfessorSelecionado,
                ]}
                onPress={() =>
                  setProfResp(professor.nome)
                }
              >

                <Text
                  style={[
                    styles.textoProfessor,

                    profResp === professor.nome &&
                      styles.textoProfessorSelecionado,
                  ]}
                >
                  {professor.nome}
                </Text>

              </TouchableOpacity>

            ))

          )}

        </View>

        {/* =====================================================
            CARGA HORÁRIA
        ===================================================== */}

        <Text style={styles.label}>
          Carga Horária
        </Text>

        <TextInput
          style={styles.input}
          placeholder="Ex.: 80"
          keyboardType="numeric"
          value={cargaHorariaDisciplina}
          onChangeText={setCargaHorariaDisciplina}
        />

        {/* =====================================================
            BOTÃO SALVAR
        ===================================================== */}

        <TouchableOpacity
          style={styles.botaoSalvar}
          onPress={
            modoEdicao
              ? salvarEdicaoDisciplina
              : lidarComCadastroDisciplina
          }
        >
          <Text style={styles.textoBotao}>
            {modoEdicao
              ? 'Salvar Alterações'
              : 'Salvar Cadastro'}
          </Text>
        </TouchableOpacity>

        {/* =====================================================
            BOTÃO CANCELAR
        ===================================================== */}

        <TouchableOpacity
          style={styles.botaoVoltarForm}
          onPress={() =>
            setTelaAtual(
              modoEdicao
                ? 'ConsultarDisciplinas'
                : 'Disciplinas'
            )
          }
        >
          <Text style={styles.textoBotao}>
            Cancelar
          </Text>
        </TouchableOpacity>

      </View>

    </ScrollView>
  );
}

// =====================================================
// CONSULTAR DISCIPLINAS
// =====================================================

export function ConsultarDisciplinas({
  pesquisa,
  setPesquisa,
  disciplinasFiltradas,
  iniciarEdicaoDisciplina,
  setTelaAtual,
}) {

  return (
    <View style={styles.containerLista}>

      {/* TÍTULO */}

      <Text style={styles.tituloLista}>
        Consultar Disciplinas
      </Text>

      {/* PESQUISA */}

      <TextInput
        style={styles.inputPesquisa}
        placeholder="🔍 Pesquisar disciplina..."
        value={pesquisa}
        onChangeText={setPesquisa}
      />

      {/* =====================================================
          LISTA
      ===================================================== */}

      <ScrollView
        style={styles.lista}
        contentContainerStyle={styles.listaConteudo}
      >

        {disciplinasFiltradas.length === 0 ? (

          <Text style={styles.textoVazio}>
            Nenhuma disciplina encontrada.
          </Text>

        ) : (

          disciplinasFiltradas.map((disciplina) => (

            <View
              key={disciplina.id}
              style={styles.cartaoDisciplina}
            >

              <View style={styles.conteudoCard}>

                <Text style={styles.nomeDisciplina}>
                  {disciplina.nome}
                </Text>

                <Text style={styles.detalheDisciplina}>
                  Professor: {disciplina.professor}
                </Text>

                <Text style={styles.detalheDisciplina}>
                  Carga horária: {disciplina.cargaHoraria} horas
                </Text>

              </View>

              <TouchableOpacity
                style={styles.botaoEditarCard}
                onPress={() =>
                  iniciarEdicaoDisciplina(disciplina)
                }
              >
                <Text style={styles.textoBotaoCard}>
                  Editar
                </Text>
              </TouchableOpacity>

            </View>

          ))

        )}

      </ScrollView>

      {/* =====================================================
          VOLTAR
      ===================================================== */}

      <TouchableOpacity
        style={styles.botaoVoltarForm}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('Disciplinas');
        }}
      >
        <Text style={styles.textoBotao}>
          Voltar
        </Text>
      </TouchableOpacity>

    </View>
  );
}

// =====================================================
// ESTILOS
// =====================================================

const styles = StyleSheet.create({

  // =====================================================
  // CONTAINER
  // =====================================================

  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5F5F5',
    padding: 20,
  },

  containerLista: {
    flex: 1,
    backgroundColor: '#F5F5F5',
    paddingTop: 50,
    alignItems: 'center',
    paddingBottom: 20,
  },

  scrollContainer: {
    flexGrow: 1,
    backgroundColor: '#F5F5F5',
  },

  // =====================================================
  // TÍTULOS
  // =====================================================

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

  // =====================================================
  // LABELS
  // =====================================================

  label: {
    width: '80%',
    textAlign: 'left',
    fontSize: 14,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 5,
  },

  // =====================================================
  // INPUTS
  // =====================================================

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

  // =====================================================
  // BOTÕES
  // =====================================================

  botao: {
    width: '80%',
    backgroundColor: '#e01f29',
    padding: 15,
    borderRadius: 10,
    marginBottom: 15,
    alignItems: 'center',
  },

  botaoSalvar: {
    width: '80%',
    backgroundColor: '#2E7D32',
    padding: 15,
    borderRadius: 10,
    marginTop: 15,
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

  botaoVoltarForm: {
    width: '80%',
    backgroundColor: '#1565C0',
    padding: 15,
    borderRadius: 10,
    marginTop: 15,
    alignItems: 'center',
  },

  textoBotao: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#FFFFFF',
  },

  // =====================================================
  // PROFESSORES
  // =====================================================

  listaProfessores: {
    width: '80%',
    marginBottom: 15,
  },

  opcaoProfessor: {
    width: '100%',
    backgroundColor: '#FFFFFF',
    padding: 15,
    borderRadius: 10,
    borderWidth: 1,
    borderColor: '#DDD',
    marginBottom: 8,
  },

  opcaoProfessorSelecionado: {
    backgroundColor: '#1565C0',
    borderColor: '#1565C0',
  },

  textoProfessor: {
    fontSize: 16,
    color: '#333',
  },

  textoProfessorSelecionado: {
    color: '#FFFFFF',
    fontWeight: 'bold',
  },

  // =====================================================
  // LISTA
  // =====================================================

  lista: {
    width: '90%',
    flex: 1,
  },

  listaConteudo: {
    paddingBottom: 10,
  },

  // =====================================================
  // CARDS
  // =====================================================

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

  conteudoCard: {
    flex: 1,
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

  // =====================================================
  // TEXTOS VAZIOS
  // =====================================================

  textoVazio: {
    color: '#999',
    fontSize: 16,
    marginTop: 30,
    textAlign: 'center',
  },

});