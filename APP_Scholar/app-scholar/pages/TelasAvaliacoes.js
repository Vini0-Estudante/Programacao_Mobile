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
// ÁREA DE AVALIAÇÕES
// =====================================================

export function AreaAvaliacoes({ setTelaAtual, setPesquisa }) {
  return (
    <View style={styles.container}>

      <Text style={styles.titulo}>
        Área de Avaliações
      </Text>

      <Text style={styles.subtitulo}>
        Gerencie as avaliações cadastradas
      </Text>

      <TouchableOpacity
        style={styles.botao}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('CadAvaliacoes');
        }}
      >
        <Text style={styles.textoBotao}>
          Cadastrar Avaliação
        </Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={styles.botao}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('ConsultarAvaliacoes');
        }}
      >
        <Text style={styles.textoBotao}>
          Consultar Avaliações
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
// FORMULÁRIO DE AVALIAÇÃO
// =====================================================

export function FormAvaliacao({
  telaAtual,

  descricaoAvaliacao,
  setDescricaoAvaliacao,

  dataAvaliacao,
  setDataAvaliacao,

  valorAvaliacao,
  setValorAvaliacao,

  salvarEdicaoAvaliacao,
  lidarComCadastroAvaliacao,

  setTelaAtual,
}) {
  const estaEditando = telaAtual === 'EditarAvaliacao';

  return (
    <ScrollView contentContainerStyle={styles.container}>

      <Text style={styles.titulo}>
        {estaEditando
          ? 'Editar Avaliação'
          : 'Cadastrar Avaliação'}
      </Text>

      {/* DESCRIÇÃO */}

      <Text style={styles.label}>
        Descrição
      </Text>

      <TextInput
        style={styles.input}
        placeholder="Digite a descrição da avaliação"
        value={descricaoAvaliacao}
        onChangeText={setDescricaoAvaliacao}
      />


      {/* DATA */}

      <Text style={styles.label}>
        Data
      </Text>

      <TextInput
        style={styles.input}
        placeholder="DD/MM/AAAA"
        value={dataAvaliacao}
        onChangeText={(texto) => {
          let valor = texto.replace(/\D/g, '');

          if (valor.length > 8) {
            valor = valor.substring(0, 8);
          }

          if (valor.length > 4) {
            valor =
              valor.substring(0, 2) +
              '/' +
              valor.substring(2, 4) +
              '/' +
              valor.substring(4);
          } else if (valor.length > 2) {
            valor =
              valor.substring(0, 2) +
              '/' +
              valor.substring(2);
          }

          setDataAvaliacao(valor);
        }}
        keyboardType="numeric"
        maxLength={10}
      />


      {/* VALOR */}

      <Text style={styles.label}>
        Valor
      </Text>

      <TextInput
        style={styles.input}
        placeholder="0 a 100"
        value={valorAvaliacao}
        onChangeText={(texto) => {
          const valor = texto.replace(/\D/g, '');

          if (valor === '') {
            setValorAvaliacao('');
            return;
          }

          const numero = Number(valor);

          if (numero <= 100) {
            setValorAvaliacao(valor);
          }
        }}
        keyboardType="numeric"
        maxLength={3}
      />


      {/* BOTÃO */}

      <TouchableOpacity
        style={styles.botao}
        onPress={
          estaEditando
            ? salvarEdicaoAvaliacao
            : lidarComCadastroAvaliacao
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
              ? 'ConsultarAvaliacoes'
              : 'Avaliacoes'
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
// CONSULTAR AVALIAÇÕES
// =====================================================

export function ConsultarAvaliacoes({
  pesquisa,
  setPesquisa,
  avaliacoesFiltradas,
  iniciarEdicaoAvaliacao,
  setTelaAtual,
}) {
  return (
    <View style={styles.container}>

      <Text style={styles.titulo}>
        Avaliações cadastradas
      </Text>

      {/* PESQUISA */}

      <TextInput
        style={styles.input}
        placeholder="Pesquisar avaliação..."
        value={pesquisa}
        onChangeText={setPesquisa}
      />


      <ScrollView style={styles.lista}>

        {avaliacoesFiltradas.length === 0 ? (

          <Text style={styles.semResultados}>
            Nenhuma avaliação encontrada.
          </Text>

        ) : (

          avaliacoesFiltradas.map((avaliacao) => (

            <View
              key={avaliacao.id}
              style={styles.card}
            >

              <Text style={styles.cardTitulo}>
                {avaliacao.descricao}
              </Text>

              <Text style={styles.cardTexto}>
                Data: {avaliacao.data}
              </Text>

              <Text style={styles.cardTexto}>
                Valor: {avaliacao.valor}
              </Text>

              <TouchableOpacity
                style={styles.botaoEditar}
                onPress={() =>
                  iniciarEdicaoAvaliacao(avaliacao)
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
        onPress={() => setTelaAtual('Avaliacoes')}
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
