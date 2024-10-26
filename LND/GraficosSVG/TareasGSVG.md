# Tarea Graficos SVG

## Código SVG
```
<svg width="300" height="200" xmlns="http://www.w3.org/2000/svg">
  <!-- Rectángulo para representar la clase -->
  <rect x="10" y="10" width="280" height="180" rx="10" ry="10" fill="#f0f0f0" stroke="#000" stroke-width="2" />

  <!-- Texto del nombre de la clase -->
  <text x="150" y="30" text-anchor="middle" font-family="Arial" font-size="16" fill="#000">Iterador</text>

  <!-- Polilínea arriba de la línea -->
  <polyline points="10,35 290,35" fill="none" stroke="#000" stroke-width="2" />

  <!-- Línea separadora entre nombre de clase y atributos/métodos -->
  <line x1="10" y1="40" x2="290" y2="40" stroke="#000" stroke-width="2" />

  <!-- Texto para atributo1 -->
  <text x="30" y="75" font-family="Arial" font-size="14" fill="#000">+Primero()</text>

  <!-- Texto para atributo2 -->
  <text x="30" y="105" font-family="Arial" font-size="14" fill="#000">+Siguiente()</text>

  <!-- Texto para método1 -->
  <text x="30" y="145" font-family="Arial" font-size="14" fill="#000">+Final()</text>

  <!-- Texto para método2 -->
  <text x="30" y="175" font-family="Arial" font-size="14" fill="#000">+Actual()</text>
</svg>
```
## Resultado

![GraficoResultado](https://github.com/nicholelouis/LDN/blob/main/GraficosSVG/img/Captura%20de%20pantalla%202024-03-02%20a%20la(s)%2003.58.30.png?raw=true)