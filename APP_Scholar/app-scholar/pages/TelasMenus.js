import React from 'react';
import { StyleSheet, Text, TouchableOpacity, View } from 'react-native';

export function TelaOutro({ setTelaAtual }) {
  return (
    <View style={styles.container}>
      <Text style={styles.titulo}>Outros</Text>
      <Text style={styles.subtitulo}>--------------------------</Text>
      <TouchableOpacity style={styles.botao} onPress={() => setTelaAtual('#')}>
        <Text style={styles.textoBotao}>Responsáveis</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.botao} onPress={() => setTelaAtual('Cursos')}>
        <Text style={styles.textoBotao}>Cursos</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.botao} onPress={() => setTelaAtual('Matriculas')}>
        <Text style={styles.textoBotao}>Matriculas</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botao}
        onPress={() => setTelaAtual('Outro2')}>
        <Text style={styles.textoBotao}>→</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botaoVoltar}
        onPress={() => setTelaAtual('Home')}>
        <Text style={styles.textoBotao}>Voltar ao Menu</Text>
      </TouchableOpacity>
    </View>
  );
}

export function TelaOutro2({ setTelaAtual }) {
  return (
    <View style={styles.container}>
      <Text style={styles.titulo}>Outros</Text>
      <Text style={styles.subtitulo}>--------------------------</Text>
      <TouchableOpacity style={styles.botao} onPress={() => setTelaAtual('Disciplinas')}>
        <Text style={styles.textoBotao}>Disciplinas</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.botao} onPress={() => setTelaAtual('Turmas')}>
        <Text style={styles.textoBotao}>Turmas</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.botao} onPress={() => setTelaAtual('Avaliacoes')}>
        <Text style={styles.textoBotao}>Avaliações</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.botao} onPress={() => setTelaAtual('Boletins')}>
        <Text style={styles.textoBotao}>Boletins</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botao}
        onPress={() => setTelaAtual('Outro')}>
        <Text style={styles.textoBotao}>←</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botaoVoltar}
        onPress={() => setTelaAtual('Home')}>
        <Text style={styles.textoBotao}>Voltar ao Menu</Text>
      </TouchableOpacity>
    </View>
  );
}

export function TelaSobre({ setTelaAtual }) {
  return (
    <View style={styles.container}>
    
      <Text style={styles.titulo}>Sobre o App</Text>
      <Text style={styles.subtitulo}>
        Scholar v1.5.1 - Desenvolvido por Vinícius Valério
      </Text>
      <TouchableOpacity
        style={styles.botaoVoltar}
        onPress={() => setTelaAtual('Home')}>
        <Text style={styles.textoBotao}>Voltar ao Menu</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5F5F5',
  },
  titulo: {
    fontSize: 32,
    fontWeight: 'bold',
    color: '#1565C0',
    textAlign: 'center',
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
});
