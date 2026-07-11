# Digital Clock

![Hardware](https://img.shields.io/badge/Hardware-Eletrônica%20Digital-green)
![Logic](https://img.shields.io/badge/Lógica-Combinacional%20e%20Sequencial-blue)
![Clock](https://img.shields.io/badge/Input%20Clock-1%20kHz-orange)

Relógio digital desenvolvido **inteiramente com Eletrônica Digital**, sem o uso de microcontroladores ou programação.

O circuito realiza a contagem das horas, minutos e segundos utilizando circuitos lógicos, contadores e divisores de frequência. Além disso, possui um sistema de seleção da velocidade do relógio por meio de um **multiplexador**, permitindo configurar o horário de forma rápida.

---

# Demonstração

> Adicione aqui capturas de tela da simulação no Proteus ou um GIF mostrando o funcionamento do circuito.

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
