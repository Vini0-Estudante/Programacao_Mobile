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
// ÁREA DE TURMAS
// =====================================================

export function AreaTurmas({ setTelaAtual, setPesquisa }) {
  return (
    <View style={styles.container}>
      {' '}
      <Text style={styles.titulo}>Área de Turmas</Text>
      <Text style={styles.subtitulo}>Gerencie as turmas cadastradas</Text>
      <TouchableOpacity
        style={styles.botao}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('CadTurmas');
        }}>
        <Text style={styles.textoBotao}>Cadastrar Turma</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botao}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('ConsultarTurmas');
        }}>
        <Text style={styles.textoBotao}>Consultar Turmas</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botaoVoltar}
        onPress={() => setTelaAtual('Home')}>
        <Text style={styles.textoBotao}>Voltar</Text>
      </TouchableOpacity>
    </View>
  );
}

// =====================================================
// FORMULÁRIO DE TURMAS
// =====================================================

export function FormTurma({
  telaAtual,
  anoLetivo,
  setAnoLetivo,
  turno,
  setTurno,
  sala,
  setSala,
  salvarEdicaoTurma,
  lidarComCadastroTurma,
  setTelaAtual,
}) {
  const estaEditando = telaAtual === 'EditarTurma';

  return (
    <View style={styles.container}>
      {' '}
      <ScrollView
        contentContainerStyle={styles.scrollContainer}
        showsVerticalScrollIndicator={false}>
        <Text style={styles.titulo}>
          {estaEditando ? 'Editar Turma' : 'Cadastrar Turma'}
        </Text>

        {/* ANO LETIVO */}
        <Text style={styles.label}>Ano letivo</Text>

        <TextInput
          style={styles.input}
          value={anoLetivo}
          onChangeText={setAnoLetivo}
          placeholder="Ex.: 2026"
          keyboardType="numeric"
          maxLength={4}
        />

        {/* TURNO */}
        <Text style={styles.label}>Turno</Text>

        <View style={styles.containerTurnos}>
          <TouchableOpacity
            style={[
              styles.botaoTurno,
              turno === 'Manhã' && styles.botaoTurnoSelecionado,
            ]}
            onPress={() => setTurno('Manhã')}>
            <Text
              style={[
                styles.textoTurno,
                turno === 'Manhã' && styles.textoTurnoSelecionado,
              ]}>
              Manhã
            </Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[
              styles.botaoTurno,
              turno === 'Tarde' && styles.botaoTurnoSelecionado,
            ]}
            onPress={() => setTurno('Tarde')}>
            <Text
              style={[
                styles.textoTurno,
                turno === 'Tarde' && styles.textoTurnoSelecionado,
              ]}>
              Tarde
            </Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[
              styles.botaoTurno,
              turno === 'Noite' && styles.botaoTurnoSelecionado,
            ]}
            onPress={() => setTurno('Noite')}>
            <Text
              style={[
                styles.textoTurno,
                turno === 'Noite' && styles.textoTurnoSelecionado,
              ]}>
              Noite
            </Text>
          </TouchableOpacity>
        </View>

        {/* SALA */}
        <Text style={styles.label}>Sala</Text>

        <TextInput
          style={styles.input}
          value={sala}
          onChangeText={setSala}
          placeholder="Ex.: A-12"
        />

        {/* SALVAR */}
        <TouchableOpacity
          style={styles.botaoSalvar}
          onPress={estaEditando ? salvarEdicaoTurma : lidarComCadastroTurma}>
          <Text style={styles.textoBotao}>
            {estaEditando ? 'Salvar Alterações' : 'Cadastrar'}
          </Text>
        </TouchableOpacity>

        {/* VOLTAR */}
        <TouchableOpacity
          style={styles.botaoVoltarForm}
          onPress={() => setTelaAtual('Turmas')}>
          <Text style={styles.textoBotao}>Voltar</Text>
        </TouchableOpacity>
      </ScrollView>
    </View>
  );
}

// =====================================================
// CONSULTAR TURMAS
// =====================================================

export function ConsultarTurmas({
  pesquisa,
  setPesquisa,
  turmasFiltradas,
  iniciarEdicaoTurma,
  setTelaAtual,
}) {
  return (
    <View style={styles.containerLista}>
      {' '}
      <Text style={styles.tituloLista}>Turmas cadastradas</Text>
      <TextInput
        style={styles.inputPesquisa}
        placeholder="Pesquisar turma..."
        value={pesquisa}
        onChangeText={setPesquisa}
      />
      <ScrollView
        style={{ width: '100%' }}
        contentContainerStyle={styles.lista}
        showsVerticalScrollIndicator={false}>
        {turmasFiltradas.length === 0 ? (
          <Text style={styles.textoVazio}>Nenhuma turma encontrada.</Text>
        ) : (
          turmasFiltradas.map((turma) => (
            <View key={turma.id} style={styles.cartaoTurma}>
              <View style={styles.informacoesTurma}>
                <Text style={styles.nomeTurma}>Turma {turma.anoLetivo}</Text>

                <Text style={styles.detalheTurma}>
                  Ano letivo: {turma.anoLetivo}
                </Text>

                <Text style={styles.detalheTurma}>Turno: {turma.turno}</Text>

                <Text style={styles.detalheTurma}>Sala: {turma.sala}</Text>
              </View>

              <TouchableOpacity
                style={styles.botaoEditarCard}
                onPress={() => iniciarEdicaoTurma(turma)}>
                <Text style={styles.textoBotaoCard}>Editar</Text>
              </TouchableOpacity>
            </View>
          ))
        )}
      </ScrollView>
      <TouchableOpacity
        style={styles.botaoVoltar}
        onPress={() => {
          setPesquisa('');
          setTelaAtual('Turmas');
        }}>
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
    marginBottom: 20,
  },

  subtitulo: {
    fontSize: 18,
    color: '#666',
    marginBottom: 40,
    textAlign: 'center',
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
    marginTop: 20,
    alignItems: 'center',
  },

  textoBotao: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#FFFFFF',
  },

  scrollContainer: {
    flexGrow: 1,
    width: '100%',
    alignItems: 'center',
    backgroundColor: '#F5F5F5',
    paddingVertical: 40,
  },

  label: {
    width: '80%',
    fontSize: 14,
    fontWeight: 'bold',
    color: '#333',
    marginTop: 15,
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
  },

  containerTurnos: {
    width: '80%',
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 10,
  },

  botaoTurno: {
    flex: 1,
    backgroundColor: '#FFFFFF',
    borderWidth: 1,
    borderColor: '#DDD',
    paddingVertical: 14,
    marginHorizontal: 4,
    borderRadius: 8,
    alignItems: 'center',
  },

  botaoTurnoSelecionado: {
    backgroundColor: '#1565C0',
    borderColor: '#1565C0',
  },

  textoTurno: {
    fontSize: 15,
    fontWeight: 'bold',
    color: '#333',
  },

  textoTurnoSelecionado: {
    color: '#FFFFFF',
  },

  botaoSalvar: {
    width: '80%',
    backgroundColor: '#2E7D32',
    padding: 15,
    borderRadius: 10,
    marginTop: 30,
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
    borderWidth: 1,
    borderColor: '#CCC',
    marginBottom: 15,
  },

  lista: {
    alignItems: 'center',
    paddingBottom: 20,
  },

  cartaoTurma: {
    width: '90%',
    backgroundColor: '#FFFFFF',
    padding: 15,
    borderRadius: 8,
    marginBottom: 12,
    flexDirection: 'row',
    alignItems: 'center',
    borderWidth: 1,
    borderColor: '#E0E0E0',
  },

  informacoesTurma: {
    flex: 1,
  },

  nomeTurma: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 5,
  },

  detalheTurma: {
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
    color: '#FFFFFF',
    fontWeight: 'bold',
    fontSize: 14,
  },

  textoVazio: {
    fontSize: 16,
    color: '#777',
    marginTop: 30,
  },
});
