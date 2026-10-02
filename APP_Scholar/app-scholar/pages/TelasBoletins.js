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
// ÁREA DE BOLETINS
// =====================================================

export function AreaBoletins({ setTelaAtual, setPesquisa }) {
  return (
    <View style={styles.container}>

      <Text style={styles.titulo}>
        Área de Boletins
      </Text>

      <Text style={styles.subtitulo}>
        Gerencie os boletins cadastrados
      </Text>

      <TouchableOpacity
        style={styles.botao}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('CadBoletins');
        }}
      >
        <Text style={styles.textoBotao}>
          Cadastrar Boletim
        </Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={styles.botao}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('ConsultarBoletins');
        }}
      >
        <Text style={styles.textoBotao}>
          Consultar Boletins
        </Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={styles.botaoVoltar}
        onPress={() => setTelaAtual('Home')}
      >
        <Text style={styles.textoBotao}>
          Voltar
        </Text>
      </TouchableOpacity>

    </View>
  );
}


// =====================================================
// FORMULÁRIO DE BOLETIM
// =====================================================

export function FormBoletim({
  telaAtual,

  notasBoletim,
  setNotasBoletim,

  mediaBoletim,
  setMediaBoletim,

  situacaoFinalBoletim,
  setSituacaoFinalBoletim,

  frequenciaBoletim,
  setFrequenciaBoletim,

  salvarEdicaoBoletim,
  lidarComCadastroBoletim,

  setTelaAtual,
}) {
  const estaEditando = telaAtual === 'EditarBoletim';

  return (
    <ScrollView contentContainerStyle={styles.container}>

      <Text style={styles.titulo}>
        {estaEditando
          ? 'Editar Boletim'
          : 'Cadastrar Boletim'}
      </Text>


      {/* NOTAS */}

      <Text style={styles.label}>
        Notas
      </Text>

      <TextInput
        style={styles.input}
        placeholder="Digite as notas"
        value={notasBoletim}
        onChangeText={setNotasBoletim}
        keyboardType="numeric"
      />


      {/* MÉDIA */}

      <Text style={styles.label}>
        Média
      </Text>

      <TextInput
        style={styles.input}
        placeholder="0 a 100"
        value={mediaBoletim}
        onChangeText={(texto) => {

          const valor = texto.replace(/[^0-9.]/g, '');

          if (valor === '') {
            setMediaBoletim('');
            return;
          }

          const numero = Number(valor);

          if (numero <= 100) {
            setMediaBoletim(valor);
          }

        }}
        keyboardType="decimal-pad"
      />


      {/* SITUAÇÃO FINAL */}

      <Text style={styles.label}>
        Situação Final
      </Text>

      <View style={styles.opcoes}>

        <TouchableOpacity
          style={[
            styles.opcao,
            situacaoFinalBoletim === 'Aprovado' &&
              styles.opcaoSelecionada,
          ]}
          onPress={() =>
            setSituacaoFinalBoletim('Aprovado')
          }
        >
          <Text style={styles.textoOpcao}>
            Aprovado
          </Text>
        </TouchableOpacity>


        <TouchableOpacity
          style={[
            styles.opcao,
            situacaoFinalBoletim === 'Reprovado' &&
              styles.opcaoSelecionada,
          ]}
          onPress={() =>
            setSituacaoFinalBoletim('Reprovado')
          }
        >
          <Text style={styles.textoOpcao}>
            Reprovado
          </Text>
        </TouchableOpacity>


        <TouchableOpacity
          style={[
            styles.opcao,
            situacaoFinalBoletim === 'Recuperação' &&
              styles.opcaoSelecionada,
          ]}
          onPress={() =>
            setSituacaoFinalBoletim('Recuperação')
          }
        >
          <Text style={styles.textoOpcao}>
            Recuperação
          </Text>
        </TouchableOpacity>

      </View>


      {/* FREQUÊNCIA */}

      <Text style={styles.label}>
        Frequência
      </Text>

      <TextInput
        style={styles.input}
        placeholder="0 a 100%"
        value={frequenciaBoletim}
        onChangeText={(texto) => {

          const valor = texto.replace(/\D/g, '');

          if (valor === '') {
            setFrequenciaBoletim('');
            return;
          }

          const numero = Number(valor);

          if (numero <= 100) {
            setFrequenciaBoletim(valor);
          }

        }}
        keyboardType="numeric"
        maxLength={3}
      />


      {/* SALVAR */}

      <TouchableOpacity
        style={styles.botao}
        onPress={
          estaEditando
            ? salvarEdicaoBoletim
            : lidarComCadastroBoletim
        }
      >
        <Text style={styles.textoBotao}>
          {estaEditando
            ? 'Salvar Alterações'
            : 'Cadastrar'}
        </Text>
      </TouchableOpacity>


      {/* VOLTAR */}

      <TouchableOpacity
        style={styles.botaoVoltar}
        onPress={() =>
          setTelaAtual(
            estaEditando
              ? 'ConsultarBoletins'
              : 'Boletins'
          )
        }
      >
        <Text style={styles.textoBotao}>
          Voltar
        </Text>
      </TouchableOpacity>

    </ScrollView>
  );
}


// =====================================================
// CONSULTAR BOLETINS
// =====================================================

export function ConsultarBoletins({
  pesquisa,
  setPesquisa,
  boletinsFiltrados,
  iniciarEdicaoBoletim,
  setTelaAtual,
}) {
  return (
    <View style={styles.container}>

      <Text style={styles.titulo}>
        Boletins cadastrados
      </Text>


      {/* PESQUISA */}

      <TextInput
        style={styles.input}
        placeholder="Pesquisar boletim..."
        value={pesquisa}
        onChangeText={setPesquisa}
      />


      <ScrollView style={styles.lista}>

        {boletinsFiltrados.length === 0 ? (

          <Text style={styles.semResultados}>
            Nenhum boletim encontrado.
          </Text>

        ) : (

          boletinsFiltrados.map((boletim) => (

            <View
              key={boletim.id}
              style={styles.card}
            >

              <Text style={styles.cardTitulo}>
                Boletim
              </Text>

              <Text style={styles.cardTexto}>
                Notas: {boletim.notas}
              </Text>

              <Text style={styles.cardTexto}>
                Média: {boletim.media}
              </Text>

              <Text style={styles.cardTexto}>
                Situação Final: {boletim.situacaoFinal}
              </Text>

              <Text style={styles.cardTexto}>
                Frequência: {boletim.frequencia}%
              </Text>


              <TouchableOpacity
                style={styles.botaoEditar}
                onPress={() =>
                  iniciarEdicaoBoletim(boletim)
                }
              >
                <Text style={styles.textoBotao}>
                  Editar
                </Text>
              </TouchableOpacity>

            </View>

          ))

        )}

      </ScrollView>


      <TouchableOpacity
        style={styles.botaoVoltar}
        onPress={() => setTelaAtual('Boletins')}
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

  container: {
    flexGrow: 1,
    padding: 20,
    backgroundColor: '#fff',
  },

  titulo: {
    fontSize: 28,
    fontWeight: 'bold',
    marginBottom: 10,
    textAlign: 'center',
  },

  subtitulo: {
    fontSize: 16,
    textAlign: 'center',
    marginBottom: 30,
  },

  label: {
    fontSize: 16,
    fontWeight: 'bold',
    marginTop: 15,
    marginBottom: 5,
  },

  input: {
    borderWidth: 1,
    borderColor: '#aaa',
    borderRadius: 8,
    padding: 12,
    marginBottom: 15,
    fontSize: 16,
  },

  opcoes: {
    marginBottom: 10,
  },

  opcao: {
    borderWidth: 1,
    borderColor: '#aaa',
    borderRadius: 8,
    padding: 12,
    marginBottom: 8,
  },

  opcaoSelecionada: {
    backgroundColor: '#007bff',
    borderColor: '#007bff',
  },

  textoOpcao: {
    fontSize: 16,
    textAlign: 'center',
  },

  botao: {
    backgroundColor: '#007bff',
    padding: 15,
    borderRadius: 8,
    marginTop: 10,
    alignItems: 'center',
  },

  botaoVoltar: {
    backgroundColor: '#555',
    padding: 15,
    borderRadius: 8,
    marginTop: 10,
    alignItems: 'center',
  },

  botaoEditar: {
    backgroundColor: '#777',
    padding: 10,
    borderRadius: 8,
    marginTop: 10,
    alignItems: 'center',
  },

  textoBotao: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
  },

  lista: {
    flex: 1,
    marginTop: 10,
  },

  card: {
    borderWidth: 1,
    borderColor: '#ccc',
    borderRadius: 10,
    padding: 15,
    marginBottom: 15,
  },

  cardTitulo: {
    fontSize: 19,
    fontWeight: 'bold',
    marginBottom: 8,
  },

  cardTexto: {
    fontSize: 16,
    marginBottom: 4,
  },

  semResultados: {
    textAlign: 'center',
    marginTop: 30,
    fontSize: 16,
  },

});
