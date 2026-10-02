import React, { useState, useEffect } from 'react';
import { StyleSheet, Text, Image, TouchableOpacity, View } from 'react-native';

// Importando as telas separadas de outros arquivos
import { AreaAlunos, FormAluno, ConsultarAlunos } from './pages/TelasAlunos';
import {
  AreaProfessores,
  FormProfessor,
  ConsultarProfessores,
} from './pages/TelasProfessores';
import {
  AreaCoordenadores,
  FormCoordenador,
  ConsultarCoordenadores,
} from './pages/TelasCoordenadores';
import {
  AreaMatriculas,
  FormMatricula,
  ConsultarMatriculas,
} from './pages/TelasMatriculas';
import { TelaOutro, TelaOutro2, TelaSobre } from './pages/TelasMenus';
import { AreaCursos, FormCurso, ConsultarCursos } from './pages/TelasCursos';
import {
  AreaDisciplinas,
  FormDisciplina,
  ConsultarDisciplinas,
} from './pages/TelasDisciplinas';
import { AreaTurmas, FormTurma, ConsultarTurmas } from './pages/TelasTurmas';
import {
  AreaAvaliacoes,
  FormAvaliacao,
  ConsultarAvaliacoes,
} from './pages/TelasAvaliacoes';
import {
  AreaBoletins,
  FormBoletim,
  ConsultarBoletins,
} from './pages/TelasBoletins';

/*API*/

const API_ALUNOS = 'http://{IP da maquina}/app_scholar_api/alunos.php';

export default function App() {
  const [telaAtual, setTelaAtual] = useState('Home');

  useEffect(() => {
    const carregarAlunos = async () => {
      try {
        const resposta = await fetch(API_ALUNOS);

        if (!resposta.ok) {
          throw new Error('Erro ao acessar a API.');
        }

        const dados = await resposta.json();

        setAlunos(dados);
      } catch (erro) {
        console.error('Erro ao carregar alunos:', erro);
        alert('Não foi possível carregar os alunos.');
      }
    };

    carregarAlunos();
  }, []);

  // BANCOS DE DADOS SIMULADOS
  const [alunos, setAlunos] = useState([
    {
      id: '1',
      nome: 'Ana Souza',
      email: 'ana@escola.com',
      matricula: '202601',
      curso: 'Direito',
    },
    {
      id: '2',
      nome: 'Bruno Lima',
      email: 'bruno@escola.com',
      matricula: '202602',
      curso: 'Engenharia',
    },
  ]);
  const [professores, setProfessores] = useState([]);
  const [coordenadores, setCoordenadores] = useState([]);
  const [cursos, setCursos] = useState([]);
  const [matriculas, setMatriculas] = useState([]);

  const [nome, setNome] = useState('');
  const [email, setEmail] = useState('');
  const [matricula, setMatricula] = useState('');
  const [curso, setCurso] = useState('');
  const [alunoSelecionado, setAlunoSelecionado] = useState(null);

  const [nomeProf, setNomeProf] = useState('');
  const [emailProf, setEmailProf] = useState('');
  const [matriculaProf, setMatriculaProf] = useState('');
  const [departamentoProf, setDepartamentoProf] = useState('');
  const [professorSelecionado, setProfessorSelecionado] = useState(null);

  const [nomeCoord, setNomeCoord] = useState('');
  const [emailCoord, setEmailCoord] = useState('');
  const [matriculaCoord, setMatriculaCoord] = useState('');
  const [setorCoord, setSetorCoord] = useState('');
  const [coordenadorSelecionado, setCoordenadorSelecionado] = useState(null);

  const [nomeCurso, setNomeCurso] = useState('');
  const [cargaHoraria, setCargaHoraria] = useState('');
  const [duracao, setDuracao] = useState('');
  const [descricao, setDescricao] = useState('');
  const [cursoSelecionado, setCursoSelecionado] = useState(null);

  const [alunoMatricula, setAlunoMatricula] = useState('');
  const [cursoMatricula, setCursoMatricula] = useState('');
  const [situacaoMatricula, setSituacaoMatricula] = useState('');
  const [dataMatricula, setDataMatricula] = useState('');
  const [matriculaSelecionada, setMatriculaSelecionada] = useState(null);

  const [disciplinas, setDisciplinas] = useState([]);
  const [nomeDisciplina, setNomeDisciplina] = useState('');
  const [profResp, setProfResp] = useState('');
  const [cargaHorariaDisciplina, setCargaHorariaDisciplina] = useState('');
  const [disciplinaSelecionada, setDisciplinaSelecionada] = useState(null);

  const [turmas, setTurmas] = useState([]);
  const [anoLetivo, setAnoLetivo] = useState('');
  const [turno, setTurno] = useState('');
  const [sala, setSala] = useState('');
  const [turmaSelecionada, setTurmaSelecionada] = useState(null);

  const [avaliacoes, setAvaliacoes] = useState([]);
  const [descricaoAvaliacao, setDescricaoAvaliacao] = useState('');
  const [dataAvaliacao, setDataAvaliacao] = useState('');
  const [valorAvaliacao, setValorAvaliacao] = useState('');
  const [avaliacaoSelecionada, setAvaliacaoSelecionada] = useState(null);

  const [boletins, setBoletins] = useState([]);
  const [notasBoletim, setNotasBoletim] = useState('');
  const [mediaBoletim, setMediaBoletim] = useState('');
  const [situacaoFinalBoletim, setSituacaoFinalBoletim] = useState('');
  const [frequenciaBoletim, setFrequenciaBoletim] = useState('');
  const [boletimSelecionado, setBoletimSelecionado] = useState(null);

  const [pesquisa, setPesquisa] = useState('');

  // LÓGICA: ALUNOS
  const lidarComCadastroAluno = () => {
    if (!nome || !email || !matricula || !curso) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }
    setAlunos([
      ...alunos,
      { id: Math.random().toString(), nome, email, matricula, curso },
    ]);
    alert('Aluno cadastrado com sucesso!');
    limparCamposAluno('Alunos');
  };

  const iniciarEdicaoAluno = (aluno) => {
    setAlunoSelecionado(aluno);
    setNome(aluno.nome);
    setEmail(aluno.email);
    setMatricula(aluno.matricula);
    setCurso(aluno.curso);
    setTelaAtual('EditarAluno');
  };

  const salvarEdicaoAluno = () => {
    setAlunos(
      alunos.map((item) =>
        item.id === alunoSelecionado.id
          ? { ...item, nome, email, matricula, curso }
          : item
      )
    );
    alert('Dados updated!');
    limparCamposAluno('ConsultarAlunos');
  };

  const limparCamposAluno = (telaDestino) => {
    setNome('');
    setEmail('');
    setMatricula('');
    setCurso('');
    setAlunoSelecionado(null);
    setTelaAtual(telaDestino);
  };

  const alunosFiltrados = alunos.filter((aluno) =>
    aluno.nome.toLowerCase().includes(pesquisa.toLowerCase())
  );

  // LÓGICA: PROFESSORES
  const lidarComCadastroProf = () => {
    if (!nomeProf || !emailProf || !matriculaProf || !departamentoProf) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }
    setProfessores([
      ...professores,
      {
        id: Math.random().toString(),
        nome: nomeProf,
        email: emailProf,
        matricula: matriculaProf,
        curso: departamentoProf,
      },
    ]);
    alert('Professor cadastrado com sucesso!');
    limparCamposProf('Professores');
  };

  const iniciarEdicaoProf = (prof) => {
    setProfessorSelecionado(prof);
    setNomeProf(prof.nome);
    setEmailProf(prof.email);
    setMatriculaProf(prof.matricula);
    setDepartamentoProf(prof.curso);
    setTelaAtual('EditarProfessor');
  };

  const salvarEdicaoProf = () => {
    setProfessores(
      professores.map((item) =>
        item.id === professorSelecionado.id
          ? {
              ...item,
              nome: nomeProf,
              email: emailProf,
              matricula: matriculaProf,
              curso: departamentoProf,
            }
          : item
      )
    );
    alert('Dados atualizados!');
    limparCamposProf('ConsultarProf');
  };

  const limparCamposProf = (telaDestino) => {
    setNomeProf('');
    setEmailProf('');
    setMatriculaProf('');
    setDepartamentoProf('');
    setProfessorSelecionado(null);
    setTelaAtual(telaDestino);
  };

  const professoresFiltrados = professores.filter((prof) =>
    prof.nome.toLowerCase().includes(pesquisa.toLowerCase())
  );

  // LÓGICA: COORDENADORES
  const lidarComCadastroCoord = () => {
    if (!nomeCoord || !emailCoord || !matriculaCoord || !setorCoord) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }
    setCoordenadores([
      ...coordenadores,
      {
        id: Math.random().toString(),
        nome: nomeCoord,
        email: emailCoord,
        matricula: matriculaCoord,
        curso: setorCoord,
      },
    ]);
    alert('Coordenador cadastrado com sucesso!');
    limparCamposCoord('Coordenadores');
  };

  const iniciarEdicaoCoord = (coord) => {
    setCoordenadorSelecionado(coord);
    setNomeCoord(coord.nome);
    setEmailCoord(coord.email);
    setMatriculaCoord(coord.matricula);
    setSetorCoord(coord.curso);
    setTelaAtual('EditarCoordenador');
  };

  const salvarEdicaoCoord = () => {
    setCoordenadores(
      coordenadores.map((item) =>
        item.id === coordenadorSelecionado.id
          ? {
              ...item,
              nome: nomeCoord,
              email: emailCoord,
              matricula: matriculaCoord,
              curso: setorCoord,
            }
          : item
      )
    );
    alert('Dados atualizados!');
    limparCamposCoord('ConsultarCoord');
  };

  const limparCamposCoord = (telaDestino) => {
    setNomeCoord('');
    setEmailCoord('');
    setMatriculaCoord('');
    setSetorCoord('');
    setCoordenadorSelecionado(null);
    setTelaAtual(telaDestino);
  };

  const coordenadoresFiltrados = coordenadores.filter((coord) =>
    coord.nome.toLowerCase().includes(pesquisa.toLowerCase())
  );

  // ===============================
  // LÓGICA: CURSOS
  // ===============================

  const lidarComCadastroCurso = () => {
    if (!nomeCurso || !cargaHoraria || !duracao || !descricao) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }

    if (descricao.length > 300) {
      alert('A descrição deve ter no máximo 300 caracteres!');
      return;
    }

    setCursos([
      ...cursos,
      {
        id: Math.random().toString(),
        nome: nomeCurso,
        cargaHoraria: cargaHoraria,
        duracao: duracao,
        descricao: descricao,
      },
    ]);

    alert('Curso cadastrado com sucesso!');

    limparCamposCurso('Cursos');
  };

  const iniciarEdicaoCurso = (curso) => {
    setCursoSelecionado(curso);

    setNomeCurso(curso.nome);
    setCargaHoraria(curso.cargaHoraria);
    setDuracao(curso.duracao);
    setDescricao(curso.descricao);

    setTelaAtual('EditarCurso');
  };

  const salvarEdicaoCurso = () => {
    setCursos(
      cursos.map((item) =>
        item.id === cursoSelecionado.id
          ? {
              ...item,
              nome: nomeCurso,
              cargaHoraria: cargaHoraria,
              duracao: duracao,
              descricao: descricao,
            }
          : item
      )
    );

    alert('Dados atualizados!');

    limparCamposCurso('ConsultarCursos');
  };

  const limparCamposCurso = (telaDestino) => {
    setNomeCurso('');
    setCargaHoraria('');
    setDuracao('');
    setDescricao('');
    setCursoSelecionado(null);

    setTelaAtual(telaDestino);
  };

  const cursosFiltrados = cursos.filter((curso) =>
    curso.nome.toLowerCase().includes(pesquisa.toLowerCase())
  );

  // =====================================================
  // LÓGICA: MATRÍCULAS
  // =====================================================

  // 1. CADASTRAR MATRÍCULA
  const lidarComCadastroMatricula = () => {
    if (!cursoMatricula || !situacaoMatricula || !dataMatricula) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }

    if (dataMatricula.length !== 10) {
      alert('Informe a data no formato DD/MM/AAAA!');
      return;
    }

    setMatriculas([
      ...matriculas,
      {
        id: Math.random().toString(),
        curso: cursoMatricula,
        situacao: situacaoMatricula,
        dataMatricula: dataMatricula,
      },
    ]);

    alert('Matrícula cadastrada com sucesso!');
    limparCamposMatricula('Matriculas');
  };

  // 2. INICIAR EDIÇÃO DA MATRÍCULA
  const iniciarEdicaoMatricula = (matricula) => {
    setMatriculaSelecionada(matricula);
    setCursoMatricula(matricula.curso);
    setSituacaoMatricula(matricula.situacao);
    setDataMatricula(matricula.dataMatricula);

    setTelaAtual('EditarMatricula');
  };

  // 3. SALVAR EDIÇÃO DA MATRÍCULA
  const salvarEdicaoMatricula = () => {
    if (!cursoMatricula || !situacaoMatricula || !dataMatricula) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }

    if (dataMatricula.length !== 10) {
      alert('Informe a data no formato DD/MM/AAAA!');
      return;
    }

    setMatriculas(
      matriculas.map((item) =>
        item.id === matriculaSelecionada.id
          ? {
              ...item,
              curso: cursoMatricula,
              situacao: situacaoMatricula,
              dataMatricula: dataMatricula,
            }
          : item
      )
    );

    alert('Dados atualizados!');

    limparCamposMatricula('ConsultarMatriculas');
  };

  // 4. LIMPAR CAMPOS DA MATRÍCULA
  const limparCamposMatricula = (telaDestino) => {
    setCursoMatricula('');
    setSituacaoMatricula('');
    setDataMatricula('');
    setMatriculaSelecionada(null);

    setTelaAtual(telaDestino);
  };

  // 5. FILTRAR MATRÍCULAS
  const matriculasFiltradas = matriculas.filter(
    (item) =>
      item.curso.toLowerCase().includes(pesquisa.toLowerCase()) ||
      item.situacao.toLowerCase().includes(pesquisa.toLowerCase()) ||
      item.dataMatricula.includes(pesquisa)
  );

  // =====================================================
  // LÓGICA: DISCIPLINAS
  // =====================================================

  // 1. CADASTRAR DISCIPLINA
  const lidarComCadastroDisciplina = () => {
    if (!nomeDisciplina || !profResp || !cargaHorariaDisciplina) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }

    setDisciplinas([
      ...disciplinas,
      {
        id: Math.random().toString(),
        nome: nomeDisciplina,
        professor: profResp,
        cargaHoraria: cargaHorariaDisciplina,
      },
    ]);

    alert('Disciplina cadastrada com sucesso!');

    limparCamposDisciplina('Disciplinas');
  };

  // 2. INICIAR EDIÇÃO DA DISCIPLINA
  const iniciarEdicaoDisciplina = (disciplina) => {
    setDisciplinaSelecionada(disciplina);

    setNomeDisciplina(disciplina.nome);
    setProfResp(disciplina.professor);
    setCargaHorariaDisciplina(disciplina.cargaHoraria);

    setTelaAtual('EditarDisciplina');
  };

  // 3. SALVAR EDIÇÃO DA DISCIPLINA
  const salvarEdicaoDisciplina = () => {
    if (!nomeDisciplina || !profResp || !cargaHorariaDisciplina) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }

    setDisciplinas(
      disciplinas.map((item) =>
        item.id === disciplinaSelecionada.id
          ? {
              ...item,
              nome: nomeDisciplina,
              professor: profResp,
              cargaHoraria: cargaHorariaDisciplina,
            }
          : item
      )
    );

    alert('Dados atualizados!');

    limparCamposDisciplina('ConsultarDisciplinas');
  };

  // 4. LIMPAR CAMPOS DA DISCIPLINA
  const limparCamposDisciplina = (telaDestino) => {
    setNomeDisciplina('');
    setProfResp('');
    setCargaHorariaDisciplina('');
    setDisciplinaSelecionada(null);

    setTelaAtual(telaDestino);
  };

  // 5. FILTRAR DISCIPLINAS
  const disciplinasFiltradas = disciplinas.filter(
    (disciplina) =>
      disciplina.nome.toLowerCase().includes(pesquisa.toLowerCase()) ||
      disciplina.professor.toLowerCase().includes(pesquisa.toLowerCase()) ||
      disciplina.cargaHoraria.toString().includes(pesquisa)
  );

  // =====================================================
  // LÓGICA: TURMAS
  // =====================================================

  // 1. CADASTRAR TURMA

  const lidarComCadastroTurma = () => {
    if (!anoLetivo || !turno || !sala) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }

    if (anoLetivo.length !== 4) {
      alert('Informe um ano letivo válido!');
      return;
    }

    setTurmas([
      ...turmas,
      {
        id: Math.random().toString(),
        anoLetivo: anoLetivo,
        turno: turno,
        sala: sala,
      },
    ]);

    alert('Turma cadastrada com sucesso!');

    limparCamposTurma('Turmas');
  };

  // 2. INICIAR EDIÇÃO

  const iniciarEdicaoTurma = (turma) => {
    setTurmaSelecionada(turma);

    setAnoLetivo(turma.anoLetivo);
    setTurno(turma.turno);
    setSala(turma.sala);

    setTelaAtual('EditarTurma');
  };

  // 3. SALVAR EDIÇÃO

  const salvarEdicaoTurma = () => {
    if (!anoLetivo || !turno || !sala) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }

    if (anoLetivo.length !== 4) {
      alert('Informe um ano letivo válido!');
      return;
    }

    setTurmas(
      turmas.map((item) =>
        item.id === turmaSelecionada.id
          ? {
              ...item,
              anoLetivo: anoLetivo,
              turno: turno,
              sala: sala,
            }
          : item
      )
    );

    alert('Dados atualizados!');

    limparCamposTurma('ConsultarTurmas');
  };

  // 4. LIMPAR CAMPOS

  const limparCamposTurma = (telaDestino) => {
    setAnoLetivo('');
    setTurno('');
    setSala('');
    setTurmaSelecionada(null);

    setTelaAtual(telaDestino);
  };

  // 5. FILTRAR TURMAS

  const turmasFiltradas = turmas.filter(
    (turma) =>
      turma.anoLetivo.toLowerCase().includes(pesquisa.toLowerCase()) ||
      turma.turno.toLowerCase().includes(pesquisa.toLowerCase()) ||
      turma.sala.toLowerCase().includes(pesquisa.toLowerCase())
  );

  // =====================================================
  // LÓGICA: AVALIAÇÕES
  // =====================================================

  const lidarComCadastroAvaliacao = () => {
    if (!descricaoAvaliacao || !dataAvaliacao || !valorAvaliacao) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }

    // Verifica se a data possui o formato DD/MM/AAAA
    if (dataAvaliacao.length !== 10) {
      alert('Informe a data no formato DD/MM/AAAA!');
      return;
    }

    // Verifica se o valor está entre 0 e 100
    const valor = Number(valorAvaliacao);

    if (valor < 0 || valor > 100) {
      alert('O valor da avaliação deve estar entre 0 e 100!');
      return;
    }

    setAvaliacoes([
      ...avaliacoes,
      {
        id: Math.random().toString(),
        descricao: descricaoAvaliacao,
        data: dataAvaliacao,
        valor: valorAvaliacao,
      },
    ]);

    alert('Avaliação cadastrada com sucesso!');

    limparCamposAvaliacao('Avaliacoes');
  };

  const iniciarEdicaoAvaliacao = (avaliacao) => {
    setAvaliacaoSelecionada(avaliacao);

    setDescricaoAvaliacao(avaliacao.descricao);
    setDataAvaliacao(avaliacao.data);
    setValorAvaliacao(avaliacao.valor);

    setTelaAtual('EditarAvaliacao');
  };

  const salvarEdicaoAvaliacao = () => {
    if (!descricaoAvaliacao || !dataAvaliacao || !valorAvaliacao) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }

    if (dataAvaliacao.length !== 10) {
      alert('Informe a data no formato DD/MM/AAAA!');
      return;
    }

    const valor = Number(valorAvaliacao);

    if (valor < 0 || valor > 100) {
      alert('O valor da avaliação deve estar entre 0 e 100!');
      return;
    }

    setAvaliacoes(
      avaliacoes.map((item) =>
        item.id === avaliacaoSelecionada.id
          ? {
              ...item,
              descricao: descricaoAvaliacao,
              data: dataAvaliacao,
              valor: valorAvaliacao,
            }
          : item
      )
    );

    alert('Dados atualizados!');

    limparCamposAvaliacao('ConsultarAvaliacoes');
  };

  const limparCamposAvaliacao = (telaDestino) => {
    setDescricaoAvaliacao('');
    setDataAvaliacao('');
    setValorAvaliacao('');

    setAvaliacaoSelecionada(null);

    setTelaAtual(telaDestino);
  };

  const avaliacoesFiltradas = avaliacoes.filter(
    (avaliacao) =>
      avaliacao.descricao.toLowerCase().includes(pesquisa.toLowerCase()) ||
      avaliacao.data.includes(pesquisa) ||
      avaliacao.valor.includes(pesquisa)
  );

  // =====================================================
  // LÓGICA: BOLETINS
  // =====================================================

  const lidarComCadastroBoletim = () => {
    if (
      !notasBoletim ||
      !mediaBoletim ||
      !situacaoFinalBoletim ||
      !frequenciaBoletim
    ) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }

    const media = Number(mediaBoletim);
    const frequencia = Number(frequenciaBoletim);

    if (media < 0 || media > 100) {
      alert('A média deve estar entre 0 e 100!');
      return;
    }

    if (frequencia < 0 || frequencia > 100) {
      alert('A frequência deve estar entre 0 e 100%!');
      return;
    }

    setBoletins([
      ...boletins,
      {
        id: Math.random().toString(),
        notas: notasBoletim,
        media: mediaBoletim,
        situacaoFinal: situacaoFinalBoletim,
        frequencia: frequenciaBoletim,
      },
    ]);

    alert('Boletim cadastrado com sucesso!');

    limparCamposBoletim('Boletins');
  };

  const iniciarEdicaoBoletim = (boletim) => {
    setBoletimSelecionado(boletim);

    setNotasBoletim(boletim.notas);
    setMediaBoletim(boletim.media);
    setSituacaoFinalBoletim(boletim.situacaoFinal);
    setFrequenciaBoletim(boletim.frequencia);

    setTelaAtual('EditarBoletim');
  };

  const salvarEdicaoBoletim = () => {
    if (
      !notasBoletim ||
      !mediaBoletim ||
      !situacaoFinalBoletim ||
      !frequenciaBoletim
    ) {
      alert('Aviso: Preencha todos os campos!');
      return;
    }

    const media = Number(mediaBoletim);
    const frequencia = Number(frequenciaBoletim);

    if (media < 0 || media > 100) {
      alert('A média deve estar entre 0 e 100!');
      return;
    }

    if (frequencia < 0 || frequencia > 100) {
      alert('A frequência deve estar entre 0 e 100%!');
      return;
    }

    setBoletins(
      boletins.map((item) =>
        item.id === boletimSelecionado.id
          ? {
              ...item,
              notas: notasBoletim,
              media: mediaBoletim,
              situacaoFinal: situacaoFinalBoletim,
              frequencia: frequenciaBoletim,
            }
          : item
      )
    );

    alert('Dados atualizados!');

    limparCamposBoletim('ConsultarBoletins');
  };

  const limparCamposBoletim = (telaDestino) => {
    setNotasBoletim('');
    setMediaBoletim('');
    setSituacaoFinalBoletim('');
    setFrequenciaBoletim('');

    setBoletimSelecionado(null);

    setTelaAtual(telaDestino);
  };

  const boletinsFiltrados = boletins.filter(
    (boletim) =>
      boletim.notas.toLowerCase().includes(pesquisa.toLowerCase()) ||
      boletim.media.toLowerCase().includes(pesquisa.toLowerCase()) ||
      boletim.situacaoFinal.toLowerCase().includes(pesquisa.toLowerCase()) ||
      boletim.frequencia.toLowerCase().includes(pesquisa.toLowerCase())
  );

  // ROTEAMENTO DINÂMICO CONDIÇIONAL
  if (telaAtual === 'Alunos')
    return <AreaAlunos setTelaAtual={setTelaAtual} setPesquisa={setPesquisa} />;
  if (telaAtual === 'CadAlunos' || telaAtual === 'EditarAluno') {
    return (
      <FormAluno
        telaAtual={telaAtual}
        nome={nome}
        setNome={setNome}
        email={email}
        setEmail={setEmail}
        matricula={matricula}
        setMatricula={setMatricula}
        curso={curso}
        setCurso={setCurso}
        salvarEdicaoAluno={salvarEdicaoAluno}
        lidarComCadastroAluno={lidarComCadastroAluno}
        setTelaAtual={setTelaAtual}
      />
    );
  }
  if (telaAtual === 'ConsultarAlunos')
    return (
      <ConsultarAlunos
        pesquisa={pesquisa}
        setPesquisa={setPesquisa}
        alunosFiltrados={alunosFiltrados}
        iniciarEdicaoAluno={iniciarEdicaoAluno}
        setTelaAtual={setTelaAtual}
      />
    );

  if (telaAtual === 'Professores')
    return (
      <AreaProfessores setTelaAtual={setTelaAtual} setPesquisa={setPesquisa} />
    );
  if (telaAtual === 'CadProf' || telaAtual === 'EditarProfessor') {
    return (
      <FormProfessor
        telaAtual={telaAtual}
        nomeProf={nomeProf}
        setNomeProf={setNomeProf}
        emailProf={emailProf}
        setEmailProf={setEmailProf}
        matriculaProf={matriculaProf}
        setMatriculaProf={setMatriculaProf}
        departamentoProf={departamentoProf}
        setDepartamentoProf={setDepartamentoProf}
        salvarEdicaoProf={salvarEdicaoProf}
        lidarComCadastroProf={lidarComCadastroProf}
        setTelaAtual={setTelaAtual}
      />
    );
  }
  if (telaAtual === 'ConsultarProf')
    return (
      <ConsultarProfessores
        pesquisa={pesquisa}
        setPesquisa={setPesquisa}
        professoresFiltrados={professoresFiltrados}
        iniciarEdicaoProf={iniciarEdicaoProf}
        setTelaAtual={setTelaAtual}
      />
    );

  if (telaAtual === 'Coordenadores')
    return (
      <AreaCoordenadores
        setTelaAtual={setTelaAtual}
        setPesquisa={setPesquisa}
      />
    );
  if (telaAtual === 'CadCoord' || telaAtual === 'EditarCoordenador') {
    return (
      <FormCoordenador
        telaAtual={telaAtual}
        nomeCoord={nomeCoord}
        setNomeCoord={setNomeCoord}
        emailCoord={emailCoord}
        setEmailCoord={setEmailCoord}
        matriculaCoord={matriculaCoord}
        setMatriculaCoord={setMatriculaCoord}
        setorCoord={setorCoord}
        setSetorCoord={setSetorCoord}
        salvarEdicaoCoord={salvarEdicaoCoord}
        lidarComCadastroCoord={lidarComCadastroCoord}
        setTelaAtual={setTelaAtual}
      />
    );
  }
  if (telaAtual === 'ConsultarCoord')
    return (
      <ConsultarCoordenadores
        pesquisa={pesquisa}
        setPesquisa={setPesquisa}
        coordenadoresFiltrados={coordenadoresFiltrados}
        iniciarEdicaoCoord={iniciarEdicaoCoord}
        setTelaAtual={setTelaAtual}
      />
    );

  if (telaAtual === 'Cursos')
    return <AreaCursos setTelaAtual={setTelaAtual} setPesquisa={setPesquisa} />;

  if (telaAtual === 'CadCursos' || telaAtual === 'EditarCurso') {
    return (
      <FormCurso
        telaAtual={telaAtual}
        nomeCurso={nomeCurso}
        setNomeCurso={setNomeCurso}
        cargaHoraria={cargaHoraria}
        setCargaHoraria={setCargaHoraria}
        duracao={duracao}
        setDuracao={setDuracao}
        descricao={descricao}
        setDescricao={setDescricao}
        salvarEdicaoCurso={salvarEdicaoCurso}
        lidarComCadastroCurso={lidarComCadastroCurso}
        setTelaAtual={setTelaAtual}
      />
    );
  }

  if (telaAtual === 'ConsultarCursos')
    return (
      <ConsultarCursos
        pesquisa={pesquisa}
        setPesquisa={setPesquisa}
        cursosFiltrados={cursosFiltrados}
        iniciarEdicaoCurso={iniciarEdicaoCurso}
        setTelaAtual={setTelaAtual}
      />
    );

  if (telaAtual === 'Matriculas') {
    return (
      <AreaMatriculas setTelaAtual={setTelaAtual} setPesquisa={setPesquisa} />
    );
  }

  if (telaAtual === 'CadMatriculas' || telaAtual === 'EditarMatricula') {
    return (
      <FormMatricula
        telaAtual={telaAtual}
        aluno={alunoMatricula}
        setAluno={setAlunoMatricula}
        curso={cursoMatricula}
        setCurso={setCursoMatricula}
        situacao={situacaoMatricula}
        setSituacao={setSituacaoMatricula}
        dataMatricula={dataMatricula}
        setDataMatricula={setDataMatricula}
        salvarEdicaoMatricula={salvarEdicaoMatricula}
        lidarComCadastroMatricula={lidarComCadastroMatricula}
        setTelaAtual={setTelaAtual}
      />
    );
  }

  if (telaAtual === 'ConsultarMatriculas') {
    return (
      <ConsultarMatriculas
        pesquisa={pesquisa}
        setPesquisa={setPesquisa}
        matriculasFiltradas={matriculasFiltradas}
        iniciarEdicaoMatricula={iniciarEdicaoMatricula}
        setTelaAtual={setTelaAtual}
      />
    );
  }

  if (telaAtual === 'Disciplinas') {
    return (
      <AreaDisciplinas setTelaAtual={setTelaAtual} setPesquisa={setPesquisa} />
    );
  }

  if (telaAtual === 'CadDisciplinas' || telaAtual === 'EditarDisciplina') {
    return (
      <FormDisciplina
        telaAtual={telaAtual}
        nomeDisciplina={nomeDisciplina}
        setNomeDisciplina={setNomeDisciplina}
        profResp={profResp}
        setProfResp={setProfResp}
        cargaHorariaDisciplina={cargaHorariaDisciplina}
        setCargaHorariaDisciplina={setCargaHorariaDisciplina}
        salvarEdicaoDisciplina={salvarEdicaoDisciplina}
        lidarComCadastroDisciplina={lidarComCadastroDisciplina}
        setTelaAtual={setTelaAtual}
        professores={professores}
      />
    );
  }

  if (telaAtual === 'ConsultarDisciplinas') {
    return (
      <ConsultarDisciplinas
        pesquisa={pesquisa}
        setPesquisa={setPesquisa}
        disciplinasFiltradas={disciplinasFiltradas}
        iniciarEdicaoDisciplina={iniciarEdicaoDisciplina}
        setTelaAtual={setTelaAtual}
      />
    );
  }

  if (telaAtual === 'Turmas') {
    return <AreaTurmas setTelaAtual={setTelaAtual} setPesquisa={setPesquisa} />;
  }

  if (telaAtual === 'CadTurmas' || telaAtual === 'EditarTurma') {
    return (
      <FormTurma
        telaAtual={telaAtual}
        anoLetivo={anoLetivo}
        setAnoLetivo={setAnoLetivo}
        turno={turno}
        setTurno={setTurno}
        sala={sala}
        setSala={setSala}
        salvarEdicaoTurma={salvarEdicaoTurma}
        lidarComCadastroTurma={lidarComCadastroTurma}
        setTelaAtual={setTelaAtual}
      />
    );
  }

  if (telaAtual === 'ConsultarTurmas') {
    return (
      <ConsultarTurmas
        pesquisa={pesquisa}
        setPesquisa={setPesquisa}
        turmasFiltradas={turmasFiltradas}
        iniciarEdicaoTurma={iniciarEdicaoTurma}
        setTelaAtual={setTelaAtual}
      />
    );
  }

  if (telaAtual === 'Avaliacoes') {
    return (
      <AreaAvaliacoes setTelaAtual={setTelaAtual} setPesquisa={setPesquisa} />
    );
  }
  if (telaAtual === 'CadAvaliacoes' || telaAtual === 'EditarAvaliacao') {
    return (
      <FormAvaliacao
        telaAtual={telaAtual}
        descricaoAvaliacao={descricaoAvaliacao}
        setDescricaoAvaliacao={setDescricaoAvaliacao}
        dataAvaliacao={dataAvaliacao}
        setDataAvaliacao={setDataAvaliacao}
        valorAvaliacao={valorAvaliacao}
        setValorAvaliacao={setValorAvaliacao}
        salvarEdicaoAvaliacao={salvarEdicaoAvaliacao}
        lidarComCadastroAvaliacao={lidarComCadastroAvaliacao}
        setTelaAtual={setTelaAtual}
      />
    );
  }
  if (telaAtual === 'ConsultarAvaliacoes') {
    return (
      <ConsultarAvaliacoes
        pesquisa={pesquisa}
        setPesquisa={setPesquisa}
        avaliacoesFiltradas={avaliacoesFiltradas}
        iniciarEdicaoAvaliacao={iniciarEdicaoAvaliacao}
        setTelaAtual={setTelaAtual}
      />
    );
  }
  if (telaAtual === 'Boletins') {
    return (
      <AreaBoletins setTelaAtual={setTelaAtual} setPesquisa={setPesquisa} />
    );
  }
  if (telaAtual === 'CadBoletins' || telaAtual === 'EditarBoletim') {
    return (
      <FormBoletim
        telaAtual={telaAtual}
        notasBoletim={notasBoletim}
        setNotasBoletim={setNotasBoletim}
        mediaBoletim={mediaBoletim}
        setMediaBoletim={setMediaBoletim}
        situacaoFinalBoletim={situacaoFinalBoletim}
        setSituacaoFinalBoletim={setSituacaoFinalBoletim}
        frequenciaBoletim={frequenciaBoletim}
        setFrequenciaBoletim={setFrequenciaBoletim}
        salvarEdicaoBoletim={salvarEdicaoBoletim}
        lidarComCadastroBoletim={lidarComCadastroBoletim}
        setTelaAtual={setTelaAtual}
      />
    );
  }
  if (telaAtual === 'ConsultarBoletins') {
    return (
      <ConsultarBoletins
        pesquisa={pesquisa}
        setPesquisa={setPesquisa}
        boletinsFiltrados={boletinsFiltrados}
        iniciarEdicaoBoletim={iniciarEdicaoBoletim}
        setTelaAtual={setTelaAtual}
      />
    );
  }

  if (telaAtual === 'Outro') return <TelaOutro setTelaAtual={setTelaAtual} />;
  if (telaAtual === 'Outro2') return <TelaOutro2 setTelaAtual={setTelaAtual} />;
  if (telaAtual === 'Sobre') return <TelaSobre setTelaAtual={setTelaAtual} />;

  // RENDERIZAÇÃO DA HOME SCREEN
  return (
    <View style={styles.container}>
      <Image source={require('./assets/logo.png')} style={styles.logo} />
      <Text style={styles.titulo}>APP Scholar</Text>
      <Text style={styles.subtitulo}>Sistema Acadêmico Mobile</Text>
      <TouchableOpacity
        style={styles.botao}
        onPress={() => setTelaAtual('Alunos')}>
        <Text style={styles.textoBotao}>Alunos</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botao}
        onPress={() => setTelaAtual('Professores')}>
        <Text style={styles.textoBotao}>Professores</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botao}
        onPress={() => setTelaAtual('Coordenadores')}>
        <Text style={styles.textoBotao}>Coordenadores</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botao}
        onPress={() => setTelaAtual('Outro')}>
        <Text style={styles.textoBotao}>Outros</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.botao}
        onPress={() => setTelaAtual('Sobre')}>
        <Text style={styles.textoBotao}>Sobre</Text>
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
  logo: { width: 150, height: 150, marginBottom: 20 },
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
  textoBotao: { fontSize: 18, fontWeight: 'bold', color: '#FFFFFF' },
});
