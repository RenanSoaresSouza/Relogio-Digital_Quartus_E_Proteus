# Digital Clock

![Hardware](https://img.shields.io/badge/Hardware-Eletrônica%20Digital-green)
![Logic](https://img.shields.io/badge/Lógica-Combinacional%20e%20Sequencial-blue)
![Clock](https://img.shields.io/badge/Clock-Divider-1Hz%2F10Hz%2F100Hz)
![Verilog](https://img.shields.io/badge/Verilog-HDL-red)
![Proteus](https://img.shields.io/badge/Proteus-7-blue)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Relógio digital desenvolvido utilizando exclusivamente lógica digital, sem o uso de microcontroladores. O projeto possui duas implementações: uma simulação no Proteus 7 e uma implementação em Verilog HDL para FPGA utilizando o Intel Quartus Prime.

O circuito realiza a contagem das horas, minutos e segundos utilizando circuitos lógicos, contadores e divisores de frequência. Além disso, possui um sistema de seleção da velocidade do relógio por meio de um **multiplexador**, permitindo configurar o horário de forma rápida.

---

## Conceitos Aplicados

- Eletrônica Digital
- Circuitos Combinacionais
- Circuitos Sequenciais
- Verilog HDL
- FPGA
- Divisão de frequência
- Multiplexadores
- Contadores síncronos
- Decodificadores BCD para sete segmentos

---

## Implementações

Este projeto foi desenvolvido em duas versões:

- **Proteus 7**: simulação do circuito utilizando componentes de Eletrônica Digital.
- **Intel Quartus**: implementação em Verilog HDL para FPGA, baseada na mesma arquitetura lógica e utilizando um clock de entrada de **50 MHz**.

---

## Recursos

- Contagem de horas, minutos e segundos.
- Divisor de frequência para geração de 1 Hz, 10 Hz e 100 Hz.
- Seleção da velocidade do relógio por multiplexador.
- Exibição em displays de sete segmentos.
- Implementações em Proteus e Verilog HDL (Quartus).

 ---

# Demonstração

> Execução com 100 Hz de clock

![Proteus_Gif](/Gif/Proteus.gif)

---

# Como executar

## Proteus

Abra o arquivo:

```text
Proteus/Relogio_Digital.DSN
```

## Quartus

abra o arquivo:
```text
Quartus/relogio.qpf
```

> **Observação:** A implementação no Proteus utiliza um clock de entrada de **1 kHz**, enquanto a implementação em Verilog para FPGA utiliza um clock de **50 MHz**. Em ambas as versões, o divisor de frequência gera os sinais de **1 Hz**, **10 Hz** e **100 Hz** utilizados pelo relógio.

---

# Funcionamento

O relógio recebe um sinal de clock de **1 kHz** proveniente de um oscilador.

Esse sinal é enviado para um **divisor de frequência**, responsável por gerar três frequências de operação: **1 Hz**, **10 Hz** e **100 Hz**. Essas frequências podem ser selecionadas por um **multiplexador**, permitindo que o relógio opere normalmente ou em modo acelerado para facilitar o ajuste do horário.

Os pulsos selecionados alimentam os contadores responsáveis pela contagem de:

* Segundos
* Minutos
* Horas

Os valores dos contadores são enviados aos decodificadores BCD para sete segmentos, responsáveis por acionar os displays.

As velocidades disponíveis são:

* **0 Hz** – Relógio pausado.
* **1 Hz** – Funcionamento normal.
* **10 Hz** – Ajuste rápido.
* **100 Hz** – Ajuste muito rápido.

---

# Arquitetura do Projeto

```text
                 Ocilador
     Proteus (1 kHz)  Quartus (50Mhz)
                    │
                    ▼
          Divisor de Frequência
                    │
        ┌───────────┼───────────┐
        │           │           │
        ▼           ▼           ▼
      1 Hz       10 Hz      100 Hz
        │           │           │
        └───────────┼───────────┘
                    ▼
             Multiplexador
                    │
                    ▼
              Contadores
     (Segundos, Minutos e Horas)
                    │
                    ▼
     Decodificadores BCD → 7 Segmentos
                    │
                    ▼
          Displays de 7 Segmentos
```
---

# Estrutura do Projeto
```
Digital-Clock/
│
├── Proteus/
│   └── Relogio_Digital.DSN
│
├── Quartus/
│   ├── clk.v
│   ├── decoder.v
│   ├── h.v
│   ├── ms.v
│   ├── mux.v
│   ├── relogio.qpf
│   ├── relogio.qsf
│   └── relogio.v
│
├── Gif/
│    └── Proteus.gif 
├── README.md
└── LICENSE
```

---

## Tecnologias e Componentes

### Hardware Digital

- Oscilador
- Divisor de frequência
- Multiplexador
- Contadores BCD
- Decodificadores BCD para sete segmentos
- Displays de sete segmentos
- Portas lógicas

### Ferramentas

- Proteus 7
- Intel Quartus Prime Lite Edition 17.0
- Verilog HDL

## Ambiente de Desenvolvimento

- Intel Quartus Prime Lite Edition 17.0.0 (Build 595)
- Linguagem: Verilog HDL
- FPGA alvo: Intel MAX 10 (10M50DAF484C7G)
- Proteus 7

## Autor

Desenvolvido por **Renan Soares Souza**.

Projeto desenvolvido para estudo de Eletrônica Digital, Sistemas Digitais e FPGA.

## 📄 Licença

Este projeto está licenciado sob a Licença MIT. Consulte o arquivo [LICENSE](LICENSE) para mais informações.
