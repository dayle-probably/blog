---
title: Circuits
---

# Circuits

Here is a collection of circuits that I built while learning about the behaviour of transistors. These are built primarily using the `2n3904` NPN bipolar junction transistor. 

<div>
  {% for circuit in site.circuits %}
    <article>
      <a href="{{ circuit.url }}"><h3>{{ circuit.title }}</h3></a>
      <img src="{{ circuit.thumbnail_url }}" alt="{{ circuit.title }}" />
    </article>
  {% endfor %}
</div>


Still to come:
- Clock (A-Stable Multivibrator)
- SR Latch
- D Latch
- D Flip-flop
- Edge Triggered D Flip-flop (Master/Slave)
- Edge Triggered D Flip-flop with 3-input NAND Gates
- Ring Counter (From D Flip-flops)
- Binary Counter (From D Flip-flops)
- Binary Counter (With enable, from JK Flip-flops)
- Adder
- Decoder
