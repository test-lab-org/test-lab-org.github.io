/*
  animates the `/images/logo.svg` SPAN graph
*/

function animateGraph() {
  // new color palette
  const NODE_COLOR = '#4fd1c5';          // base color = teal
  const NODE_HIGHLIGHT_COLOR = '#a7f3d0'; // minty teal for the flash

  const EDGE_COLOR = '#a0aec0';          // base color = light gray
  const EDGE_HIGHLIGHT_COLOR = '#e2e8f0'; // off-white for the flash

  const nodes = document.querySelectorAll('.node');
  const edges = document.querySelectorAll('.edge');

  // Animate nodes
  nodes.forEach((node, index) => {
    setTimeout(() => {
      node.style.transform = 'scale(1.5)';
      node.style.fill = NODE_HIGHLIGHT_COLOR;
      setTimeout(() => {
        node.style.transform = 'scale(1)';
        node.style.fill = NODE_COLOR; // Return to base color
      }, 300);
    }, index * 50);
  });

  // Animate edges
  edges.forEach((edge, index) => {
    setTimeout(() => {
      edge.style.strokeWidth = '6';
      edge.style.stroke = EDGE_HIGHLIGHT_COLOR;
      setTimeout(() => {
        edge.style.strokeWidth = '4';
        edge.style.stroke = EDGE_COLOR; // Return to base color
      }, 300);
    }, index * 30);
  });
}

// Add interactive hover effects that use the new palette
document.addEventListener('DOMContentLoaded', (event) => {
  const NODE_COLOR = '#4fd1c5';
  const NODE_HIGHLIGHT_COLOR = '#a7f3d0';

  // We must re-query the nodes after the DOM is loaded
  const nodes = document.querySelectorAll('.node');

  nodes.forEach(node => {
    node.addEventListener('mouseenter', () => {
      node.style.transform = 'scale(1.2)';
      node.style.fill = NODE_HIGHLIGHT_COLOR; // Use highlight color on hover
    });

    node.addEventListener('mouseleave', () => {
      node.style.transform = 'scale(1)';
      node.style.fill = NODE_COLOR; // Return to base color
    });
  });

  // Auto-animate on load, after a brief delay
  setTimeout(animateGraph, 1000);
});
