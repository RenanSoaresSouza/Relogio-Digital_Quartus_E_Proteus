# Digital Clock

![Hardware](https://img.shields.io/badge/Hardware-Eletrônica%20Digital-green)
![Logic](https://img.shields.io/badge/Lógica-Combinacional%20e%20Sequencial-blue)
![Clock](https://img.shields.io/badge/Clock-Divider-1Hz%2F10Hz%2F100Hz)
![Verilog](https://img.shields.io/badge/Verilog-HDL-red)
![Proteus](https://img.shields.io/badge/Proteus-7-blue)

Relógio digital desenvolvido sem o uso de microcontroladores.

O circuito realiza a contagem das horas, minutos e segundos utilizando circuitos lógicos, contadores e divisores de frequência. Além disso, possui um sistema de seleção da velocidade do relógio por meio de um **multiplexador**, permitindo configurar o horário de forma rápida.

---

## Implementações

Este projeto foi desenvolvido em duas versões:

- **Proteus 7**: simulação do circuito utilizando componentes de Eletrônica Digital.
- **Intel Quartus**: implementação em Verilog para FPGA, utilizando a mesma arquitetura lógica, utilizando um clock de entrada de 50 MHz.
---

# Demonstração

> Adicione aqui capturas de tela da simulação no Proteus ou um GIF mostrando o funcionamento do circuito.

---

# Como executar

## Proteus

Abra o arquivo:

Proteus/Relogio_Digital.DSN

## Quartus
Extraia o arquivo Quartus/relogio.zip

E abra o arquivo:

Quartus/relogio.qpf

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
             Oscilador (1 kHz)
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

# Componentes Utilizados

* Oscilador de 1 kHz
* Divisor de frequência
* Multiplexador
* Contadores BCD
* Decodificadores BCD para sete segmentos
* Displays de sete segmentos
* Portas lógicas
* Resistores
* Simulação desenvolvida no **Proteus 7**
* Projeto desenvolvido no Intel Quartus Prime para FPGA.

## Ambiente de Desenvolvimento

- Intel Quartus Prime Lite Edition 17.0.0 (Build 595)
- Proteus 7
- Linguagem: Verilog HDL
