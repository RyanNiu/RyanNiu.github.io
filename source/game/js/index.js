const root = document.documentElement;

document.addEventListener('mousemove', e => {
  let x = e.clientX / window.innerWidth;
  let y = e.clientY / window.innerHeight;

  root.style.setProperty('--mouse-x', x);
  root.style.setProperty('--mouse-y', y);
});

document.addEventListener('mouseleave', e => {
  root.style.removeProperty('--mouse-x');
  root.style.removeProperty('--mouse-y');
});